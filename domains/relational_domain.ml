open Abstract_syntax_tree
open Cfg
open Value_domain
open Apron

(* manager *)
type man = Polka.loose Polka.t
let manager = Polka.manager_alloc_loose ()

(* abstract elements *)
type t = man Abstract1.t

(* utilities *)

let var_to_tvar v = Var.of_string (v.var_name ^ string_of_int v.var_id)

let rec expr_to_texpr = function
  | CFG_int_binary (op, e1, e2) ->
      Texpr1.Binop (
        begin match op with
        | AST_PLUS     -> Texpr1.Add
        | AST_MINUS    -> Texpr1.Sub
        | AST_MULTIPLY -> Texpr1.Mul
        | AST_DIVIDE   -> Texpr1.Div
        | AST_MODULO   -> Texpr1.Mod
        end
      , expr_to_texpr e1
      , expr_to_texpr e2
      , Texpr1.Int
      , Texpr1.Down)
  | CFG_int_unary (op, e) ->
      begin match op with
      | AST_UNARY_PLUS  -> expr_to_texpr e
      | AST_UNARY_MINUS -> Texpr1.Unop (Texpr1.Neg
                                      , expr_to_texpr e
                                      , Texpr1.Int
                                      , Texpr1.Down)
      end
  | CFG_int_var v   -> Texpr1.Var (var_to_tvar v)
  | CFG_int_const z -> 
      Texpr1.Cst (Coeff.s_of_mpq (Mpq.of_string (Z.to_string z)))
  | CFG_int_rand(l,h) -> 
      Texpr1.Cst (Coeff.i_of_mpq (Mpq.of_string (Z.to_string l)) 
                                   (Mpq.of_string (Z.to_string h)))

(* implementation *)

let init vs = 
  List.fold_left
    (fun env v -> Abstract1.assign_texpr manager env (var_to_tvar v) (Texpr1.of_expr (Abstract1.env env) (Texpr1.Cst (Coeff.s_of_int 0))) None)
    (Abstract1.top 
      manager 
      (Environment.make (Array.of_list (List.map var_to_tvar vs)) [||]))
    vs

let bottom = Abstract1.bottom manager (Environment.make [||] [||])

let assign m v e =
  Abstract1.assign_texpr 
    manager 
    m 
    (var_to_tvar v) 
    (Texpr1.of_expr (Abstract1.env m) (expr_to_texpr e))
    None

let remove_not =
  let aux_bincmp inv = if inv then function
    | AST_EQUAL -> AST_NOT_EQUAL
    | AST_NOT_EQUAL -> AST_EQUAL
    | AST_LESS -> AST_GREATER_EQUAL
    | AST_LESS_EQUAL -> AST_GREATER
    | AST_GREATER -> AST_LESS_EQUAL
    | AST_GREATER_EQUAL -> AST_LESS
    else fun x -> x 
  and aux_binop inv = if inv then function
    | AST_AND -> AST_OR | AST_OR -> AST_AND
    else fun x -> x
  in
  let rec aux inv = function
    | CFG_bool_unary (_,e) -> aux (not inv) e
    | CFG_bool_binary (o,e1,e2) ->
        CFG_bool_binary (aux_binop inv o, aux inv e1, aux inv e2)
    | CFG_compare (o, e1, e2) ->
        CFG_compare(aux_bincmp inv o, e1, e2)
    | CFG_bool_const b -> CFG_bool_const (if inv then not b else b)
    | x -> x
  in aux false

let guard m e =
  let e' = remove_not e in
  let env = Abstract1.env m in
  let make_ineq e1 e2 = 
    Tcons1.make 
      (Texpr1.of_expr 
        env 
        (Texpr1.Binop(Texpr1.Sub, e1, e2, Texpr1.Int, Texpr1.Down))) in
  let rec aux = function
    | CFG_bool_binary (o,e1,e2) ->
        let a1 = aux e1 and a2 = aux e2 in
        (match o with AST_AND -> Abstract1.meet | _ -> Abstract1.join) manager a1 a2
    | CFG_compare (o,e1,e2) ->
        let e1' = expr_to_texpr e1 and e2' = expr_to_texpr e2 in
        let ar = match o with
        | AST_EQUAL ->
            let c = make_ineq e1' e2' Tcons1.EQ
            and ar = Tcons1.array_make env 1 in Tcons1.array_set ar 0 c; ar
        | AST_NOT_EQUAL ->
            let c1 = make_ineq e1' e2' Tcons1.SUP
            and c2 = make_ineq e2' e1' Tcons1.SUP
            and ar = Tcons1.array_make env 2 in
            Tcons1.array_set ar 0 c1; Tcons1.array_set ar 1 c2; ar 
        | AST_LESS ->
            let c = make_ineq e2' e1' Tcons1.SUP
            and ar = Tcons1.array_make env 1 in
            Tcons1.array_set ar 0 c; ar
        | AST_LESS_EQUAL ->
            let c = make_ineq e2' e1' Tcons1.SUPEQ
            and ar = Tcons1.array_make env 1 in
            Tcons1.array_set ar 0 c; ar
        | AST_GREATER ->
            let c = make_ineq e1' e2' Tcons1.SUP
            and ar = Tcons1.array_make env 1 in
            Tcons1.array_set ar 0 c; ar
        | AST_GREATER_EQUAL ->
            let c = make_ineq e1' e2' Tcons1.SUPEQ
            and ar = Tcons1.array_make env 1 in
            Tcons1.array_set ar 0 c; ar
        in Abstract1.meet_tcons_array manager m ar
    | CFG_bool_const b -> if b then m else Abstract1.bottom manager (Abstract1.env m)
    | CFG_bool_rand -> m
    | CFG_bool_unary _ -> failwith "impossible" in
  aux e'
                         
let bwd_assign m v e dst =
  Abstract1.substitute_texpr 
    manager 
    m 
    (var_to_tvar v) 
    (Texpr1.of_expr (Abstract1.env m)
    (expr_to_texpr e)) 
    (Some dst)

let join m1 m2 =
  if Abstract1.is_bottom manager m1 then m2 else
  if Abstract1.is_bottom manager m2 then m1 else
  Abstract1.join manager m1 m2

let meet m1 m2 = 
  if Abstract1.is_bottom manager m1 then m1 else
  if Abstract1.is_bottom manager m2 then m2 else
  Abstract1.meet manager m1 m2
                          
let widen m1 m2 =
  if Abstract1.is_bottom manager m1 then m2 else
  if Abstract1.is_bottom manager m2 then m1 else
  Abstract1.widening manager m1 m2

let subset = Abstract1.is_leq manager

let is_bottom = Abstract1.is_bottom manager

let print fmt env = Abstract1.print fmt env
