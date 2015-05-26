open Domain
open Cfg
open Abstract_syntax_tree


module WorklistIter (D : DOMAIN) = struct
  module Map = Mapext.Make
    (struct type t = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)

  type t = D.t Map.t

  let print c =
    Map.iter (fun n inv -> Printf.printf "Node %d\n" n.node_id; D.print c inv)

  module Set = Set.Make
    (struct type t = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)

  let transformCfg = fun x -> x
  (* simple inter procedural analysis *)
  let iterate cfg =
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n (D.init cfg.cfg_vars) env) Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of instruction i in domain
     * d *)
    let eval d =  function
      | CFG_skip(_)     -> (*Printf.printf "skip\n";*) d
      | CFG_assign(v,e) -> (*Printf.printf "assign\n";*) D.assign d v e
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let a = D.guard d g in 
                           begin if(a == D.bottom) 
                             then Printf.printf "Assert failed\n" 
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
          if List.length n.node_in == 0 
          then x_i
          else 
            List.fold_left 
              (fun d a -> D.join d (eval (Map.find a.arc_src invs) a.arc_inst)) 
              D.bottom
              n.node_in in
        (*D.print stdout y';*)
        let y = if Set.mem n widening_points then D.widen x_i y' else y' in
        if D.subset y x_i then
          iter invs
        else begin
          List.iter (fun a -> Queue.push a.arc_dst q) n.node_out;
          iter (Map.add n y invs)
        end
    in iter invs
            
  let bwd_iterate cfg =
    let mapping = iterate cfg in
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n (D.init cfg.cfg_vars) env) Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of instruction i in domain
     * d *)
    let eval d inst src = match inst with
      | CFG_skip(_)     -> d
      | CFG_assign(v,e) -> D.bwd_assign (Map.find src mapping) v e d
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let b = D.guard d (g) in
                           let a = D.guard d (CFG_bool_unary(AST_NOT, g)) in 
                           begin if a != D.bottom 
                             then Printf.printf "Assert failed\n" 
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
            (fun d a -> D.join d (eval (Map.find a.arc_src invs) a.arc_inst a.arc_src)) 
            (D.init cfg.cfg_vars) 
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
