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

let unary v = function
  | AST_UNARY_PLUS -> v
  | AST_UNARY_MINUS -> begin match v with Int z -> Int (Z.neg z) | v -> v end

let binary a b op = match (a,b) with
  | (Bot,_) | (_,Bot) -> Bot
  | (Top,_) | (Top,_) -> Top
  | (Int a, Int b) -> match op with
         | AST_PLUS -> Z.add a b
         | AST_MINUS -> Z.minus a b
         | AST_MULTIPLY -> Z.mul a b
         | AST_DIVIDE ->
             if b == Z.zero then Bot
             else Int (Z.ediv a b)

let compare x y = (x,y)
