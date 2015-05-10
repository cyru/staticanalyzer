open Abstract_syntax_tree
open Cfg

type t = Bot | Int of Z.t | Top

let top = Top
let bottom = Bot
let const z = Int z
let rand a b = match Z.compare a b with
  | 1 -> Bot
  | 0 -> Int a
  | -1 -> Top
  | _ -> failwith "impossible"

let neg = function Int z -> Int (Z.neg z) | v -> v

let unary v = function
  | AST_UNARY_PLUS  -> v
  | AST_UNARY_MINUS -> neg v

let add x y = match x,y with
  | Bot,_ | _,Bot -> Bot
  | Top,_ | _,Top -> Top
  | Int a, Int b  -> Int (Z.add a b)

let sub x y = match x,y with
  | Bot,_ | _,Bot -> Bot
  | Top,_ | _,Top -> Top
  | Int a, Int b  -> Int (Z.sub a b)

let mul x y = match x,y with
  | Bot,_ | _,Bot        -> Bot
  | x,_ when x == Int Z.zero -> x
  | _,x when x == Int Z.zero -> x
  | Top,_ | _,Top            -> Top
  | Int a, Int b             -> Int (Z.mul a b)

let div x y = match x,y with
  | Bot,_ | _,Bot             -> Bot
  | _, x when x == Int Z.zero -> Bot
  | Top, _                    -> Top
  | _, Top                    -> Int Z.zero
  | Int a, Int b              -> Int (Z.ediv a b)

let rem x y = match x,y with
  | Bot,_ | _,Bot              -> Bot
  | _,x when x == Int Z.zero   -> Bot
  | Top, _                     -> Top
  | x,Top when x == Int Z.zero -> x
  | _,Top                      -> Top
  | Int a, Int b               -> Int (Z.rem a b)

let binary i j = function
  | AST_PLUS     -> add i j
  | AST_MINUS    -> sub i j
  | AST_MULTIPLY -> mul i j
  | AST_DIVIDE   -> div i j
  | AST_MODULO   -> rem i j

let join x y = match (x,y) with
  | Top,_ | _,Top -> Top
  | Bot,x | x,Bot -> x
  | Int a, Int b -> if Z.equal a b then x else Top

let meet x y = match (x,y) with
  | Bot,_ | _,Bot -> Bot
  | Top,x | x,Top -> x
  | Int a, Int b -> if Z.equal a b then x else Bot

let widen i j = match i,j with
  | Bot,i | i, Bot -> i
  | Int a, Int b   -> Int a
  | _              -> Top

let compare x y = function
  | AST_EQUAL     -> meet x y, meet x y
  | _             -> x, y

let bwd_unary x op r = match op with
  | AST_UNARY_PLUS  -> meet x r
  | AST_UNARY_MINUS -> meet x (neg r)

let bwd_binary x y op r = match op with
  | AST_PLUS     -> meet x (sub r y), meet y (sub r x)
  | AST_MINUS    -> meet x (add r y), meet y (add r x)
  | AST_MULTIPLY -> meet x (div r y), meet y (div r x)
  | AST_DIVIDE   -> x,y
  | AST_MODULO   -> x,y

let subset x y = match (x,y) with
  | Bot,_ -> true
  | _,Bot -> false
  | _,Top -> true
  | Top,_ -> false
  | Int a, Int b -> Z.equal a b

let is_bottom x = x == Bot

let print c = function
  | Bot   -> Printf.fprintf c "Bot"
  | Int a -> Printf.fprintf c "%s" (Z.to_string a)
  | Top   -> Printf.fprintf c "Top"
