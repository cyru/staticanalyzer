open Abstract_syntax_tree
open Cfg

type t = Bot 
       | Inter of Z.t * Z.t 
       | Nonlower of Z.t 
       | Nonupper of Z.t
       | Top

let top = Top
let bottom = Bot
let const z = Inter (z,z)
let rand a b = match Z.compare a b with
  | 1 -> Bot
  | _ -> Inter (a,b)

let unary v = function
  | AST_UNARY_PLUS -> v
  | AST_UNARY_MINUS ->
      begin match v with
      | Inter (a,b) -> Inter (Z.neg b, Z.neg a)
      | Nonlower a -> Nonupper (Z.neg a)
      | Nonupper a -> Nonlower (Z.neg a)
      | _ -> v
      end

let binary a b op = match (a,b) with
  | (Bot,_) | (_,Bot) -> Bot
  | (Top,_) | (Top,_) -> Top
  | (Inter (a,b), Inter (a',b')) ->
      begin match op with
      | AST_PLUS -> Inter (Z.plus a a', Z.plus b b')
      | AST_MINUS -> Inter (Z.minus a b', Z.minus b a')
      | AST_MULTIPLY -> Inter (
      end
  | (Nonlower a,  Nonupper b) ->
      begin match op with
      | AST_PLUS -> Top 
      | AST_MINUS -> 
      end
