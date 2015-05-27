open Abstract_syntax_tree
open Cfg

type bound = Minf | Int of Z.t | Pinf

type t = Itv of bound * bound | Bot

(* utilities *)

let bound_zero = Int Z.zero
let bound_one  = Int Z.one

let bound_cmp a b = match a,b with
  | Int a, Int b            -> Z.compare a b
  | Pinf, Pinf | Minf, Minf -> 0
  | Pinf, _    | _   , Minf -> 1
  | _                       -> -1

let bound_sgn = function
  | Int a -> Z.sign a
  | Pinf  -> 1
  | Minf  -> -1

let bound_neg = function
  | Int a -> Int (Z.neg a)
  | Pinf  -> Minf
  | Minf  -> Pinf

let bound_abs = function
  | Int a -> Int (Z.abs a)
  | Pinf  -> Pinf
  | Minf  -> Minf

let bound_add a b = match a,b with
  | Int a, Int b -> Int (Z.add a b)
  | Pinf, Minf | Minf, Pinf -> failwith "undefined"
  | Pinf, _    | _   , Pinf -> Pinf
  | Minf, _    | _   , Minf -> Minf

let bound_sub a b = bound_add a (bound_neg b)

let bound_mul a b = match a,b with
  | Int a, Int b -> Int (Z.mul a b)
  | Pinf, Minf | Minf, Pinf -> Minf
  | Minf, Minf | Pinf, Pinf -> Pinf
  | Pinf, Int x | Int x, Pinf -> begin match Z.compare x Z.zero with
                                 | 0 -> b | 1 -> Minf | _ -> Pinf
                                 end
  | Minf, Int x | Int x, Minf -> begin match Z.compare x Z.zero with
                                 | 0 -> b | 1 -> Pinf | _ -> Minf
                                 end


let bound_div a b =
  if bound_cmp b bound_zero == 0 then (
    match bound_cmp a bound_zero with 
    | 0  -> bound_zero
    | -1 -> Minf
    | _  -> Pinf
  ) else match a,b with
  | Int a, Int b      -> Int (Z.ediv a b)
  | _, Pinf | _, Minf -> bound_zero
  | Pinf, _           -> if bound_cmp b bound_zero == 0 then Minf else Pinf
  | Minf, _           -> if bound_cmp b bound_zero == 0 then Pinf else Minf

let bound_rem a b = match a,b with
  | Int a, Int b -> Int (Z.rem a b)
  | _, _         -> bound_zero

let bound_min a b = match a,b with
  | Minf, _ | _, Minf   -> Minf
  | Int a, Int b        -> Int (Z.min a b)
  | Int a, _ | _, Int a -> Int a
  | Pinf, Pinf          -> Pinf

let bound_max a b = match a,b with
  | Pinf, _ | _, Pinf   -> Pinf
  | Int a, Int b        -> Int (Z.max a b)
  | Int a, _ | _, Int a -> Int a
  | Minf, Minf          -> Minf

let bound_to_string  = function
  | Pinf  -> "+inf"
  | Minf  -> "-inf"
  | Int a -> Z.to_string a

let strict1 f = function
  | Itv(a,b) -> f a b
  | Bot      -> Bot

let strict2 f i j= match i,j with
  | Bot,_ | _,Bot -> Bot
  | Itv(a,b), Itv(c,d) -> f ((a,b),(c,d))

(* domain implementation *)

(* constructors *)
let top = Itv(Minf, Pinf)
let bottom = Bot
let const a = Itv(Int a, Int a)
let rand a b = if Z.leq a b then Itv(Int a, Int b) else Bot

let inf = function Bot -> Pinf | Itv(a,b) -> a

let sup = function Bot -> Minf | Itv(a,b) -> b

let join i j = match i,j with
  | Bot,i | i,Bot -> i
  | Itv(a,b),Itv(a',b') ->
      let a'' = bound_min a a' and b'' = bound_max b b' in
      Itv(a'',b'')

let meet i j = match i,j with
  | Bot,_ |_,Bot -> Bot
  | Itv(a,b),Itv(a',b') ->
      let a'' = bound_max a a' and b'' = bound_min b b' in
      if bound_cmp a'' b'' > 0 then Bot else Itv(a'',b'')

let neg = strict1
  (fun a b -> Itv(bound_neg b, bound_neg a))

let unary i = function
  | AST_UNARY_PLUS  -> i
  | AST_UNARY_MINUS -> neg i

let add = strict2 (fun
  ((a,b),(a',b')) -> Itv(bound_add a a', bound_add b b'))

let sub = strict2 (fun
  ((a,b),(a',b')) -> Itv(bound_sub a b', bound_sub b a'))

let mul = strict2 (fun
  ((a,b),(c,d)) ->
    let ac = bound_mul a c and ad = bound_mul a d
    and bc = bound_mul b c and bd = bound_mul b d in
    Itv (bound_min (bound_min ac ad) (bound_min bc bd)
        ,bound_max (bound_max ac ad) (bound_max bc bd)))

let rec div i j = match i,j with
  | Bot,_ | _,Bot -> Bot
  | Itv(a,b),Itv(c,d) ->
      if bound_cmp (Int Z.one) c <= 0 then
        Itv (bound_min (bound_div a c) (bound_div a d)
            ,bound_max (bound_div b c) (bound_div b d))
      else if bound_cmp d (Int Z.minus_one) <= 0 then
        Itv (bound_min (bound_div b c) (bound_div b d)
            ,bound_max (bound_div a c) (bound_div a d))
      else
        meet (div i (join j (Itv (Int Z.one, Pinf)))) (div i (join j (Itv(Minf, Int Z.minus_one))))

(* if took the same operator than the one in apron *)

(* abs a = |a| *)
let abs b = match b with
  | Bot -> Bot
  | Itv(l,h) ->
      if bound_sgn l >= 0 then b
      else if bound_sgn h <= 0 then neg b
      else Itv(bound_zero, bound_max (bound_abs l) h)

let rec rem b c = match b,c with
  | Bot,_ | _,Bot -> Bot
  | Itv(l1,h1), Itv(l2,h2) ->
      let abs_c = abs c in
      if bound_sgn (inf abs_c) == 0 then top
      else let tmp' = mul (div b abs_c) abs_c in (* tmp' = |c|*b/|c| *)
           let tmp =
             if bound_sgn (sup b) < 0 then
               Itv(bound_neg (sup abs_c),bound_zero)
             else if bound_sgn (inf b) > 0 then
               Itv(bound_neg (sup abs_c), sup abs_c)
             else Itv(bound_zero, sup abs_c) in
           meet (sub b tmp') tmp

let binary i j = function
  | AST_PLUS     -> add i j
  | AST_MINUS    -> sub i j
  | AST_MULTIPLY -> mul i j
  | AST_DIVIDE   -> div i j
  | AST_MODULO   -> rem i j

let widen i j = match i,j with
  | Bot,i | i,Bot -> i
  | Itv(a,b),Itv(c,d) ->
      let a' = if bound_cmp a c <= 0 then a else Minf
      and b' = if bound_cmp b d >= 0 then b else Pinf
      in Itv (a',b')

let compare x y = function
  | AST_EQUAL     -> meet x y, meet x y
  | AST_NOT_EQUAL -> x,y (* as soon an interval has more than one element, nothing can be done *)
  | AST_LESS      ->
      begin match x,y with
      | Bot,_ -> x,x
      | _,Bot -> y,y
      | Itv(a,b),Itv(c,d) ->
          meet x (Itv(Minf,bound_sub d bound_one)), meet y (Itv(bound_add a bound_one,Pinf))
      end
  | AST_LESS_EQUAL -> 
      begin match x,y with
      | Bot,_ -> x,x
      | _,Bot -> y,y
      | Itv(a,b),Itv(c,d) ->
          meet x (Itv(Minf,d)), meet y (Itv(a,Pinf))
      end
  | AST_GREATER ->
      begin match x,y with
      | Bot,_ -> x,x
      | _,Bot -> y,y
      | Itv(a,b),Itv(c,d) ->
          meet x (Itv(bound_add c bound_one,Pinf)), meet y (Itv(Minf, bound_sub b bound_one))
      end
  | AST_GREATER_EQUAL ->
      begin match x,y with
      | Bot,_ -> x,x
      | _,Bot -> y,y
      | Itv(a,b),Itv(c,d) ->
          meet x (Itv(c,Pinf)), meet y (Itv(Minf,b))
      end

let bwd_unary x op r = match op with
  | AST_UNARY_PLUS  -> meet x r
  | AST_UNARY_MINUS -> meet x (neg r)

let bwd_binary x y op r = match op with
  | AST_PLUS     -> meet x (sub r y), meet y (sub r x)
  | AST_MINUS    -> meet x (add r y), meet y (add r x)
  | AST_MULTIPLY -> meet x (div r y), meet y (div r x)
  | AST_DIVIDE   -> x,y
  | AST_MODULO   -> x,y

let subset a b = match a,b with
  | Bot,_ -> true | _,Bot -> false
  | Itv(a,b),Itv(c,d) -> bound_cmp a c >= 0 && bound_cmp b d <= 0

let is_bottom i = i == Bot

let print fmt = let open Format in function
  | Bot -> fprintf fmt "Bot"
  | Itv(a,b) -> 
      fprintf fmt "[%s,%s]" (bound_to_string a) (bound_to_string b)
