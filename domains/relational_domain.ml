open Abstract_syntax_tree
open Cfg
open Value_domain
open Domain
open Apron

module Relational : DOMAIN = struct
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
    | CFG_int_const z -> Texpr1.Cst 
                           (Coeff.s_of_mpq (Mpq.of_string (Z.to_string z)))
    | _ -> failwith "undefined"

  (* implementation *)

  let init vs = 
    Abstract1.top 
      manager 
      (Environment.make (Array.of_list (List.map var_to_tvar vs)) [||])

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
    let rec aux = function
      | CFG_bool_binary (o,e1,e2) ->
          let a1 = aux e1 and a2 = aux e2 in
          (match o with AST_AND -> Abstract1.meet | _ -> Abstract1.join) manager a1 a2
      | CFG_bool_const true -> m
      | CFG_bool_unary _ -> failwith "impossible" in
    aux e


  type 'a annoted = int
  type int_expr_annoted =int
                           
  let bwd_assign a b c d = failwith "not implemented"
        
  let join = Abstract1.join manager

  let meet = Abstract1.meet manager

                            
  let widen = Abstract1.widening manager

  let subset = Abstract1.is_leq manager

  let is_bottom = Abstract1.is_bottom manager

  let print oc = Abstract1.print (Format.formatter_of_out_channel oc)

end
