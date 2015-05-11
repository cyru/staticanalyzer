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

  let print ch = function
  | Bot   -> Printf.fprintf ch "Bot"
  | Env m -> 
      Printf.fprintf ch "Environment:\n";
      Map.iter (fun v i -> Cfg_printer.print_var ch v; Printf.fprintf ch " ";
                           V.print ch i; Printf.fprintf ch "\n") m;
end
