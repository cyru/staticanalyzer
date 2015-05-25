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
<<<<<<< HEAD
    
  (* transformCfg cfg is a new control flow graph where function calls have been made explicit *)
=======

>>>>>>> 41eb24127ff6a21dc6660a4784f89ddfefd2c964
  let transformCfg cfg =
    let nb_arcs = ref (List.length cfg.cfg_arcs) in
    let arcs = List.fold_left
      (fun arcs f -> List.fold_left
<<<<<<< HEAD
                       (fun arcs a ->
                         incr nb_arcs; 
                         (* let a' = { arc_id=!nb_arcs; arc_src = f.func_exit;
                                     arc_dst = a.arc_src; arc_inst = CFG_skip "function return";}
                         in*) a(*::a'*)::arcs)
                       arcs 
                       f.func_calls)
      cfg.cfg_arcs
      cfg.cfg_funcs in
    { cfg with cfg_arcs = arcs }
=======
        (fun arcs a ->
	  incr nb_arcs;
	  let a' = { arc_id = !nb_arcs; arc_src = f.func_exit;
	             arc_dst = a.arc_src; arc_inst = CFG_skip "function return"; }
		     in
	  a::a'::arcs)
	arcs
	f.func_calls)
      cfg.cfg_arcs
      cfg.cfg_funcs in
    { cfg with cfg_arcs = arcs }
        
>>>>>>> 41eb24127ff6a21dc6660a4784f89ddfefd2c964

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
<<<<<<< HEAD
      | CFG_guard(g)    -> D.guard d g
=======
      | CFG_guard(g)    -> D.guard d g      
      | CFG_assert(g)   -> let a = D.guard d g in 
                           begin if(a == D.bottom) 
                             then Printf.printf "Assert failed miserably\n" 
                             else () ; a 
                           end
>>>>>>> 41eb24127ff6a21dc6660a4784f89ddfefd2c964
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

end
