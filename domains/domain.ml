(*
  Cours "Sémantique et Application à la Vérification de programmes"
  
  Antoine Miné 2015
  Ecole normale supérieure, Paris, France / CNRS / INRIA
*)

(* 
  Signature of abstract domains representing sets of envrionments
  (for instance: a map from variable to their bounds).
 *)

open Abstract_syntax_tree
open Cfg
open Value_domain
  
module type DOMAIN =
  sig

    (* type of abstract elements *)
    (* an element of type t abstracts a set of mappings from variables
       to integers
     *)
    type t

    (* initial environment, with all variables initialized to 0 *)
    val init: var list -> t

    (* empty set of environments *)
    val bottom: t

    (* assign an integer expression to a variable *)
    val assign: t -> var -> int_expr -> t

    (* filter environments to keep only those satisfying the boolean expression *)
    val guard: t -> bool_expr -> t

    (* abstract join *)
    val join: t -> t -> t

    (* widening *)
    val widen: t -> t -> t

    (* whether an abstract element is included in another one *)
    val subset: t -> t -> bool

    (* whether the abstract element represents the empty set *)
    val is_bottom: t -> bool
        
    (* prints *)
    val print: out_channel -> t -> unit
        
  end


module NonRelational(V: VALUE_DOMAIN) : DOMAIN = struct

  module Map = Mapext.Make
    (struct type t = var let compare v1 v2 = compare v1.var_id v2.var_id end)

  type env = V.t Map.t

  type t = Env of env | Bot

  let init l = Env (List.fold_left (fun env v -> Map.add v (V.const Z.zero) env) Map.empty l)

  let bottom = Bot

  let rec eval env = function
    | CFG_int_unary (op, e)       -> V.unary (eval env e) op
    | CFG_int_binary (op, e1, e2) -> V.binary (eval env e1) (eval env e2) op
    | CFG_int_var v -> 
        begin match env with 
        | Bot -> failwith "undefined" 
        | Env m -> Map.find v m end
    | CFG_int_const z    -> V.const z
    | CFG_int_rand (l,h) -> V.rand l h
  
  let assign env v e = match env with
    | Bot   -> failwith "undefined"
    | Env m -> Env (Map.add v (eval env e) m)

  let rec normaliserExpression (e:bool_expr) : bool_expr = 
    match (e) with
    | CFG_bool_unary (AST_NOT, f) -> 
      begin 
        match f with
        | CFG_bool_unary (AST_NOT, g) -> normaliserExpression g
        
        | CFG_bool_binary (AST_AND,g,h) -> (CFG_bool_binary 
             (*!(g && h) -> (!g)||(!h)*)     (AST_OR, (normaliserExpression (CFG_bool_unary(AST_NOT, g))), (normaliserExpression (CFG_bool_unary(AST_NOT, h)))
                                              )
                                            )
        | CFG_bool_binary (AST_OR,g,h) -> (CFG_bool_binary 
             (*!(g || h) -> (!g)&&(!h)*)     (AST_AND, (normaliserExpression (CFG_bool_unary(AST_NOT, g))), (normaliserExpression (CFG_bool_unary(AST_NOT, h)))
                                              )
                                            )
        | CFG_compare(AST_EQUAL,e1,e2) -> normaliserExpression (CFG_compare(AST_NOT_EQUAL,e1,e2))
        | CFG_compare(AST_NOT_EQUAL,e1,e2) ->normaliserExpression (CFG_compare(AST_EQUAL,e1,e2))
        | CFG_compare(AST_LESS,e1,e2) ->normaliserExpression (CFG_compare(AST_GREATER_EQUAL,e1,e2))
        | CFG_compare(AST_LESS_EQUAL,e1,e2) ->normaliserExpression (CFG_compare(AST_GREATER,e1,e2))
        | CFG_compare(AST_GREATER,e1,e2) ->normaliserExpression (CFG_compare(AST_LESS_EQUAL,e1,e2))
        | CFG_compare(AST_GREATER_EQUAL,e1,e2) ->normaliserExpression (CFG_compare(AST_LESS,e1,e2))
        | CFG_bool_const(b) -> CFG_bool_const(not b)
        | CFG_bool_rand -> CFG_bool_rand
      end
    | CFG_compare(AST_EQUAL,e1,e2) -> CFG_bool_binary(AST_AND, (CFG_compare(AST_LESS_EQUAL,e1,e2)) , (CFG_compare(AST_LESS_EQUAL,e2,e1)))
    | CFG_compare(AST_NOT_EQUAL,e1,e2) -> CFG_bool_binary(AST_OR, (CFG_compare(AST_LESS_EQUAL,e1,CFG_int_binary(AST_MINUS,e2,CFG_int_const(Z.one)))) , (CFG_compare(AST_LESS_EQUAL,e2,CFG_int_binary(AST_MINUS,e1,CFG_int_const(Z.one)))))
    | CFG_compare(AST_LESS,e1,e2) -> (CFG_compare(AST_LESS_EQUAL,e1,CFG_int_binary(AST_MINUS,e2,CFG_int_const(Z.one))))
    | CFG_compare(AST_LESS_EQUAL,e1,e2) ->(CFG_compare(AST_LESS_EQUAL,e1,e2))
    | CFG_compare(AST_GREATER,e1,e2) -> (CFG_compare(AST_LESS_EQUAL,e2,CFG_int_binary(AST_MINUS,e1,CFG_int_const(Z.one))))
    | CFG_compare(AST_GREATER_EQUAL,e1,e2) ->(CFG_compare(AST_LESS_EQUAL,e2,e1))
        
    | CFG_bool_binary (op, e1, e2) -> CFG_bool_binary (op, normaliserExpression e1, normaliserExpression e2)
    | CFG_bool_const(_) -> e
    | CFG_bool_rand -> e

(*
type bool_expr =

//  (* unary operation *)
  | CFG_bool_unary of bool_unary_op * bool_expr

  (* binary operation *)
  | CFG_bool_binary of bool_binary_op * bool_expr * bool_expr
  | CFG_compare of compare_op * int_expr * int_expr

  (* constants *)
  | CFG_bool_const of bool

  (* non-deterministic choice *)
  | CFG_bool_rand

        | AST_bool_const of bool
        | AST_bool_rand

      end
    | AST_bool_binary of bool_binary_op * (bool_expr ext) * (bool_expr ext)
    | AST_compare of compare_op * (int_expr ext) * (int_expr ext)
    | AST_bool_const of bool
    | AST_bool_rand

*)
(*    |type int_unary_op =
     | AST_UNARY_PLUS     (* +e *)
     | AST_UNARY_MINUS    (* -e *)

     type bool_unary_op =
     | AST_NOT            (* !e logical negation *)


(* binary expression operators *)

     type int_binary_op =
     | AST_PLUS          (* e + e *)
     | AST_MINUS         (* e - e *)
     | AST_MULTIPLY      (* e * e *)
     | AST_DIVIDE        (* e / e *)
     | AST_MODULO        (* e % e *)

     type compare_op =
     | AST_EQUAL         (* e == e *)
     | AST_NOT_EQUAL     (* e != e *)
     | AST_LESS          (* e < e *)
     | AST_LESS_EQUAL    (* e <= e *)
     | AST_GREATER       (* e > e *)
     | AST_GREATER_EQUAL (* e >= e *)

     type bool_binary_op =
     | AST_AND           (* e && e *)
     | AST_OR            (* e || e *)


(* expressions *)
type int_expr = 

  (* unary operation *)
  | CFG_int_unary of int_unary_op * int_expr

  (* binary operation *)
  | CFG_int_binary of int_binary_op * int_expr * int_expr

  (* variable use *)
  | CFG_int_var of var

  (* constants *)
  | CFG_int_const of Z.t

  (* non-deterministic choice between two integers *)
  | CFG_int_rand of Z.t (* lower bound *) * Z.t (* upper bound *)

        
type bool_expr =

  (* unary operation *)
  | CFG_bool_unary of bool_unary_op * bool_expr

  (* binary operation *)
  | CFG_bool_binary of bool_binary_op * bool_expr * bool_expr
  | CFG_compare of compare_op * int_expr * int_expr

  (* constants *)
  | CFG_bool_const of bool

  (* non-deterministic choice *)
  | CFG_bool_rand
*)


  let guard = failwith "undefined"

  let join a b = match a,b with
  | Bot,x | x,Bot -> x
  | Env m, Env n -> Env (Map.map2z (fun _ x y -> V.join x y) m n)

  let widen a b = match a,b with
  | Bot,x | x,Bot -> x
  | Env m, Env n -> Env (Map.map2z (fun _ x y -> V.widen x y) m n)

  let subset a b = match a,b with
  | Bot,Bot       -> true
  | Bot,_ | _,Bot -> false
  | Env m, Env n  -> Map.for_all2z (fun _ x y -> V.subset x y) m n
  
  let is_bottom = function
  | Bot -> true
  | Env e -> Map.is_empty e

  let print ch = failwith "undefined"
end
