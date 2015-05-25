open Domain
open Cfg


module WorklistIter (D : DOMAIN) = struct
  module Map = Mapext.Make
    (struct type t = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)

  type t = D.t Map.t

  let print c =
    Map.iter (fun n inv -> Printf.printf "Node %d\n" n.node_id; D.print c inv)

  module Set = Set.Make
    (struct type t = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)

  (* simple inter procedural analysis *)
  let iterate cfg =
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n D.bottom env) Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of instruction i in domain
     * d *)
    let eval d = function
      | CFG_skip(_)     -> d
      | CFG_assign(v,e) -> D.assign d v e
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let a = D.guard d g in 
                           begin if(a == D.bottom) 
                             then Printf.printf "Assert failed miserably\n" 
                             else () ; a end
      | _               -> failwith "undefined" in
    (* Compute widening points by using a depth first search algorithm to find looping points *)
    let widening_points =
      let to_visit = Queue.create () in
      Queue.push cfg.cfg_init_entry to_visit;
      let rec visit visited rep =
        if Queue.is_empty to_visit then rep
        else begin 
          let node = Queue.pop to_visit in
          if Set.mem node visited then
            visit visited (Set.add node rep)
          else begin
            List.iter (fun a -> Queue.push a.arc_dst to_visit) node.node_out;
            visit visited rep
          end
        end
      in visit Set.empty Set.empty in
    let rec iter invs =
      if Queue.is_empty q then invs
      else
        let n = Queue.pop q in let x_i = Map.find n invs in
        let y' = 
          List.fold_left 
            (fun d a -> D.join d (eval (Map.find a.arc_src invs) a.arc_inst)) 
            D.bottom 
            n.node_in in
        let y = if Set.mem n widening_points then D.widen x_i y' else y' in
        if D.subset y x_i then
          iter invs
        else begin
          List.iter (fun a -> Queue.push a.arc_dst q) n.node_out;
          iter (Map.add n y invs)
        end
    in iter invs


(* GOTO transform
open Lexing


(* position in the source file, we use ocamllex's default type *)

type position = Lexing.position
let position_unknown = Lexing.dummy_pos


(* extents are pairs of positions *)

type extent = position * position (* start/end *)
let extent_unknown = (position_unknown, position_unknown)


            
type inst2 =      

  (* go to the destination node doing nothing *)
  (* the string argument is just for printing, it give some
     information on the original instruction that caused the skip
   *)
  | DFG_skip of string
    
  (* assignment *)
  | DFG_assign of var * int_expr * (D.t)
                           
  (* guard: test that must be satisfied to make a transition *)
  | DFG_guard of bool_expr

  (* assertion: it is an error if the test is not satisfied *)
  | DFG_assert of bool_expr
        
  (* function call *)
  | DFG_call of func


and func =
    { func_id: int;          (* unique function identifier *)
      func_name: string;     (* function name *)
      func_pos: extent;      (* function position in the source *)
      func_entry: node;      (* entry node *)
      func_exit: node;       (* exit node *)
      func_args: var list;   (* list of formal arguments *)
      func_ret: var option;  (* variable used to store the return value *)
      mutable func_calls: arc list; (* list of calls to the function *)
    }


      
(* Graphs *)
(* ****** *)

      
(* 
   Each CFG node is denoted by a unique (integer) identifier.
   A CFG node corresponds roughly to a position in the program, but complex
   statements and expressions can be split among many nodes.
 *)      
and node =
    { node_id:  int;               (* unique identifier *)
      node_pos: position;          (* position in the source *)
      mutable node_out: arc list;  (* arcs with this node as source *)
      mutable node_in: arc list;   (* arcs with this node as destination *)
    }

and arc =
    { arc_id:  int;    (* unique identifier *)
      arc_src: node;   (* source node *)
      arc_dst: node;   (* destination node *)
      arc_inst: inst2;  (* instruction *)
    }

      
    
type dfg =
    { cfg_vars: var list;    (* list of all the variables *)
      cfg_funcs: func list;  (* list of all the functions *)
      cfg_nodes: node list;  (* list of all the nodes in the program *)
      cfg_arcs: arc list;    (* list of all the arcs in the program *)
      cfg_init_entry: node;  (* first node of code initializing global variables *)
      cfg_init_exit: node;   (* last node of initialization code *)
    }
      

THIS FUNCTION HAS TO PERFORM THE FORWARD ANALYSIS AND THEN RETURN A DFG (CFG with the assign annoted with the environment)

  let transform (cfg:cfg) dfg =
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n D.bottom env) Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of instruction i in domain
     * d *)
    let eval d aa = match aa with
      | CFG_skip(a)     -> DFG_skip(a),d
      | CFG_assign(v,e) -> let x = D.assign d v e in (DFG_assign(v,e,d),x)
      | CFG_guard(g)    -> DFG_guard(g),D.guard d g
      | CFG_assert(g)   -> let a = D.guard d g in 
                           begin if(a == D.bottom) 
                             then Printf.printf "Assert failed miserably\n" 
                             else () ; (DFG_assert(g),a) end
      | _               -> failwith "undefined" in
    (* Compute widening points by using a depth first search algorithm to find looping points *)
    let widening_points =
      let to_visit = Queue.create () in
      Queue.push cfg.cfg_init_entry to_visit;
      let rec visit visited rep =
        if Queue.is_empty to_visit then rep
        else begin 
          let node = Queue.pop to_visit in
          if Set.mem node visited then
            visit visited (Set.add node rep)
          else begin
            List.iter (fun a -> Queue.push a.arc_dst to_visit) node.node_out;
            visit visited rep
          end
        end
      in visit Set.empty Set.empty in
    let rec iter invs =
      if Queue.is_empty q then invs
      else
        let n = Queue.pop q in let x_i = Map.find n invs in
        let y' = 
          List.fold_left 
            (fun d a -> D.join d (let (arctrans,ret)= eval (Map.find a.arc_src invs) a.arc_inst in ret)) 
            D.bottom 
            n.node_in in
        let y = if Set.mem n widening_points then D.widen x_i y' else y' in
        if D.subset y x_i then
          iter invs
        else begin
          List.iter (fun a -> Queue.push a.arc_dst q) n.node_out;
          iter (Map.add n y invs)
        end
    in iter invs
 *)
            
let bwd_iterate cfg =
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n D.bottom env) Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of instruction i in domain
     * d *)
    let eval d = function
      | CFG_skip(_)     -> d
      | CFG_assign(v,e) -> D.bwd_assign (*FIXEME HERE WE HAVE TO PUT THE ENVIRONEMENT OBTAINED BY FORWARD ANALYSIS X*)d v e d
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let b = D.guard d (g) in
                           let a = D.guard d (CFG_bool_unary(AST_NOT, g)) in 
                           begin if(a != D.bottom) 
                             then Printf.printf "Assert failed miserably\n" 
                             else () ; b end
      | _               -> failwith "undefined" in
    (* Compute widening points by using a depth first search algorithm to find looping points *)
    let widening_points =
      let to_visit = Queue.create () in
      Queue.push cfg.cfg_init_entry to_visit;
      let rec visit visited rep =
        if Queue.is_empty to_visit then rep
        else begin 
          let node = Queue.pop to_visit in
          if Set.mem node visited then
            visit visited (Set.add node rep)
          else begin
            List.iter (fun a -> Queue.push a.arc_src to_visit) node.node_in;
            visit visited rep
          end
        end
      in visit Set.empty Set.empty in
    let rec iter invs =
      if Queue.is_empty q then invs
      else
        let n = Queue.pop q in let x_i = Map.find n invs in
        let y' = 
          List.fold_left 
            (fun d a -> D.join d (eval (Map.find a.arc_src invs) a.arc_inst)) 
            D.bottom 
            n.node_in in
        let y = if Set.mem n widening_points then D.widen x_i y' else y' in
        if D.subset y x_i then
          iter invs
        else begin
          List.iter (fun a -> Queue.push a.arc_src q) n.node_in;
          iter (Map.add n y invs)
        end
    in iter invs


end
