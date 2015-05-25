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

    (* backward assign*)
    val bwd_assign: t->var->int_expr->t->t
                   
    (* abstract join *)
    val join: t -> t -> t

    (* abstract meet *)
    val meet: t -> t -> t

    (* widening *)
    val widen: t -> t -> t

    (* whether an abstract element is included in another one *)
    val subset: t -> t -> bool

    (* whether the abstract element represents the empty set *)
    val is_bottom: t -> bool
        
    (* prints *)
    val print: out_channel -> t -> unit
        
  end

module Constant = Constant_domain
module Interval = Interval_domain

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
    | Bot   -> Env (Map.singleton v (eval env e))
    | Env m -> Env (Map.add v (eval env e) m)

  let rec normalizeExpression (e:bool_expr) : bool_expr = 
    match (e) with
    | CFG_bool_unary (AST_NOT, f) -> 
      begin 
        match f with
        | CFG_bool_unary (AST_NOT, g) -> 
            normalizeExpression g
        
        | CFG_bool_binary (AST_AND,g,h) ->  
             (*!(g && h) -> (!g)||(!h)*)
            CFG_bool_binary
              ( AST_OR
              , normalizeExpression (CFG_bool_unary(AST_NOT, g))
              , normalizeExpression (CFG_bool_unary(AST_NOT, h)))
        | CFG_bool_binary (AST_OR,g,h) -> 
             (*!(g || h) -> (!g)&&(!h)*)     
            CFG_bool_binary 
              ( AST_AND
              , normalizeExpression (CFG_bool_unary(AST_NOT, g))
              , normalizeExpression (CFG_bool_unary(AST_NOT, h)))
        | CFG_compare(AST_EQUAL,e1,e2) -> 
            normalizeExpression (CFG_compare(AST_NOT_EQUAL,e1,e2))
        | CFG_compare(AST_NOT_EQUAL,e1,e2) ->
            normalizeExpression (CFG_compare(AST_EQUAL,e1,e2))
        | CFG_compare(AST_LESS,e1,e2) ->
            normalizeExpression (CFG_compare(AST_GREATER_EQUAL,e1,e2))
        | CFG_compare(AST_LESS_EQUAL,e1,e2) ->
            normalizeExpression (CFG_compare(AST_GREATER,e1,e2))
        | CFG_compare(AST_GREATER,e1,e2) ->
            normalizeExpression (CFG_compare(AST_LESS_EQUAL,e1,e2))
        | CFG_compare(AST_GREATER_EQUAL,e1,e2) ->
            normalizeExpression (CFG_compare(AST_LESS,e1,e2))
        | CFG_bool_const(b) -> 
            CFG_bool_const(not b)
        | CFG_bool_rand -> 
            CFG_bool_rand
      end
    | CFG_compare(AST_EQUAL,e1,e2) -> 
        normalizeExpression 
          (CFG_bool_binary( AST_AND
                          , (CFG_compare(AST_LESS_EQUAL,e1,e2))
                          , (CFG_compare(AST_LESS_EQUAL,e2,e1))))
    | CFG_compare(AST_NOT_EQUAL,e1,e2) -> 
        normalizeExpression 
          (CFG_bool_binary
            ( AST_OR
            , (CFG_compare( AST_LESS_EQUAL
                          , e1
                          , CFG_int_binary(AST_MINUS,e2,CFG_int_const(Z.one))))
            , (CFG_compare( AST_LESS_EQUAL
                          , e2
                          , CFG_int_binary(AST_MINUS,e1,CFG_int_const(Z.one))))))
    | CFG_compare(AST_LESS,e1,e2) -> 
        normalizeExpression 
          (CFG_compare( AST_LESS_EQUAL
                      , e1
                      , CFG_int_binary(AST_MINUS,e2,CFG_int_const(Z.one))))
    | CFG_compare(AST_LESS_EQUAL,e1,e2) ->
        CFG_compare(AST_LESS_EQUAL,CFG_int_binary(AST_MINUS,e1,e2),CFG_int_const(Z.zero))
    | CFG_compare(AST_GREATER,e1,e2) -> 
        normalizeExpression 
         (CFG_compare( AST_LESS_EQUAL
                     , e2
                     , CFG_int_binary(AST_MINUS,e1,CFG_int_const(Z.one))))
    | CFG_compare(AST_GREATER_EQUAL,e1,e2) -> 
        normalizeExpression (CFG_compare(AST_LESS_EQUAL,e2,e1))
        
    | CFG_bool_binary (op, e1, e2) -> 
        CFG_bool_binary (op, normalizeExpression e1, normalizeExpression e2)
    | CFG_bool_const(_) -> e
    | CFG_bool_rand -> e

  let meet a b = match a,b with
  | Bot,x | x,Bot -> Bot
  | Env m, Env n -> Env (Map.map2o (fun _ x -> x) (fun _ x -> x) (fun _ x y -> V.meet x y) m n)

  let join a b = match a,b with
  | Bot,x | x,Bot -> x
  | Env m, Env n -> Env (Map.map2o (fun _ x -> x) (fun _ x -> x) (fun _ x y -> V.join x y) m n)

  type 'a annoted = 'a * V.t
  type int_expr_annoted =
  | ANN_int_unary of int_unary_op * (int_expr_annoted annoted)
  | ANN_int_binary of int_binary_op * (int_expr_annoted annoted) * (int_expr_annoted annoted)
  | ANN_int_var of var
  | ANN_int_const of Z.t
  | ANN_int_rand of (Z.t (* lower bound *) * Z.t (* upper bound *))

  let rec topdown_expr (e:int_expr) (env:t) : int_expr_annoted annoted = match e with
  | CFG_int_unary (op, e1) -> let (e1p, abs) = topdown_expr e1 env in (ANN_int_unary(op, (e1p,abs)) ,V.unary abs op)
  | CFG_int_binary (op, e1, e2) -> let (e1p,abs1) = topdown_expr e1 env in let (e2p, abs2) = topdown_expr e2 env in (ANN_int_binary(op,(e1p, abs1),(e2p, abs2)),V.binary abs1 abs2 op)
  | CFG_int_var(v) -> begin match env with
    |Bot -> (ANN_int_var(v),V.bottom)
    |Env (ev) -> (ANN_int_var(v),try Map.find v ev with |_ -> V.bottom) (*WHAT TODO in case of non declared variable ? V.bottom or fail miserably ?*)
  end
  | CFG_int_const(a) -> (ANN_int_const(a),(V.const a))
  | CFG_int_rand(low, up) -> (ANN_int_rand(low,up),V.rand low up)

  let rec backward_expr (e:int_expr_annoted annoted) (env:t) : (int_expr_annoted annoted * t) = 
    let (ex, an) = e in 
    match ex with
    | ANN_int_unary (op, (e1, a1)) -> let exp2, env2 = backward_expr (e1,V.bwd_unary a1 op an) env in  (ANN_int_unary(op, exp2),an), env2
    | ANN_int_binary (op, (e1,a1), (e2,a2)) -> let x1,x2 = (V.bwd_binary a1 a2 op an) in 
                                               let exp1, env1 = backward_expr (e1,x1) env in
                                               let exp2, env2 = backward_expr (e2,x2) env1 in
                                               (ANN_int_binary (op, (exp1), (exp2)), an), env2
    | ANN_int_var(v) -> begin match env with
      |Bot -> (ANN_int_var(v), V.bottom), Bot
      |Env (ev) -> let ev2 = try Map.add v (V.meet (Map.find v ev) an) ev with |_ -> ev in (ANN_int_var(v), Map.find v ev), Env(ev2)
    end
    | ANN_int_const(a) -> if(V.subset (V.const a) an) then (ANN_int_const(a), an), env else (ANN_int_const(a), an), Bot
    | ANN_int_rand(low, up) -> if(V.subset (V.rand low up) an) then (ANN_int_rand(low,up), an), env else (ANN_int_rand(low,up), an), Bot

  let rec analyser_exprN (e:bool_expr) (env:t) : t = match e with
    | CFG_bool_binary (AST_AND, e1, e2) -> meet (analyser_exprN e1 env) (analyser_exprN e2 env)
    | CFG_bool_binary (AST_OR, e1, e2) -> join (analyser_exprN e1 env) (analyser_exprN e2 env)
    | CFG_compare(AST_LESS_EQUAL,e1,e2) (*e2 = 0 après normalisation*) -> 
      let (ee,an) = (topdown_expr e1 env) in 
      let (ee2, env2) = backward_expr (ee, (let (aa,_ ) = (V.compare an (V.const Z.zero) AST_LESS_EQUAL) in aa)) env in 
      env2
    | CFG_bool_const(bb) -> if bb then env else Bot
    | CFG_bool_rand -> Bot (*NOT SURE of that*)
    | _ -> failwith "l'expression n'est pas normalisée"
      

  let guard (env:t) (e:bool_expr) : t = 
    analyser_exprN (normalizeExpression e) env

  let bwd_assign (x:t) (v:var) (expr:int_expr) (f:t) =
    let env = Map.add v (Map.find v
                                  (match x with
                                   |Bot -> Map.empty
                                   |Env m -> m
                                  ))
                      (match f with
                       |Bot -> Map.empty
                       |Env m -> m
                                       )in
    let (e1,a1) = topdown_expr expr (Env env) in
    let (e2,a2) = (e1, V.join a1 (Map.find v 
                      (match f with
                       |Bot -> Map.empty
                       |Env m -> m
                                       ))) in
    let (_,s) = backward_expr (e2,a2) (Env env) in s

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

  let print ch = function
  | Bot   -> Printf.fprintf ch "Bot"
  | Env m -> 
      Printf.fprintf ch "Environment:\n";
      Map.iter (fun v i -> Cfg_printer.print_var ch v; Printf.fprintf ch " ";
                           V.print ch i; Printf.fprintf ch "\n") m;
end
