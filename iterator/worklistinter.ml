open Domain
open Abstract_syntax_tree
open Cfg

module WorklistIter (D : DOMAIN) = struct
  module Map = Mapext.Make
                 (struct type t = Cfg.node
                         let compare n1 n2 = compare n1.node_id n2.node_id end)

  type t = D.t Map.t

  let print fmt =
    Map.iter (fun n inv ->
              Format.fprintf fmt "Node %d\n" n.node_id;
              D.print fmt inv;
              Format.fprintf fmt "\n")

  module Set = Set.Make
                 (struct type t = Cfg.node
                         let compare n1 n2 = compare n1.node_id n2.node_id end)
    

  let substring s1 s2 =
    try
      let len = String.length s2 in
      for i = 0 to String.length s1 - len do
        if String.sub s1 i len = s2 then raise Exit
      done;
      false
    with Exit -> true

  (* transformCfg cfg is a new control flow graph where function 
  calls have been made explicit *)
  let transformCfg cfg =
    let nb_arcs = ref (List.length cfg.cfg_arcs) in
    let rm_calls = List.filter
      (fun a -> match a.arc_inst with
        | CFG_call _ -> false
        | _ -> true) in
    let arcs = 
      rm_calls
        (List.fold_left
          (fun arcs f -> List.fold_left
            (fun arcs a ->
	            incr nb_arcs;
	            let a' = { arc_id = !nb_arcs;
                           arc_src = f.func_exit;
                           arc_dst = a.arc_dst;
                           arc_inst = CFG_skip "function return" } in
              f.func_exit.node_out <- a' :: f.func_exit.node_out;
              a.arc_dst.node_in <- a' :: a.arc_dst.node_in;
              incr nb_arcs;
              let a'' = { arc_id = !nb_arcs;
                          arc_src = a.arc_src;
                          arc_dst = f.func_entry;
                          arc_inst = CFG_skip "function entry" }
              in 
              a.arc_src.node_out <- a'' :: a.arc_src.node_out;
              f.func_entry.node_in <- a'' :: f.func_entry.node_in;
              a''::a'::arcs)
	          arcs
	          f.func_calls)
          cfg.cfg_arcs
          cfg.cfg_funcs) in
    List.iter
      (fun n ->
       n.node_out <- rm_calls n.node_out;
       n.node_in <- rm_calls n.node_in)
      cfg.cfg_nodes; 
    let vars = List.fold_left
      (fun vars a ->
        match a.arc_inst with
        | CFG_assign(v,_) -> if substring v.var_name "__ret_"
                             then v::vars else vars
        | _ -> vars
      )
      cfg.cfg_vars
      cfg.cfg_arcs
    in { cfg with cfg_arcs = arcs; cfg_vars = vars }
        
  (* simple inter procedural analysis *)
  let iterate cfg' =
    let cfg = transformCfg cfg' in
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    (*D.print Format.std_formatter (D.init cfg.cfg_vars);*)
    Format.fprintf Format.std_formatter "iterating\n";
    (*D.print Format.std_formatter (D.bottom);*)
    let invs = List.fold_left (fun env n ->
                               Map.add n (D.init cfg.cfg_vars) env)
                              Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of 
     instruction i in domain d *)
    let eval d =  function
      | CFG_skip(s)     -> (*Printf.printf "%s\n" s;*) d
      | CFG_assign(v,e) ->
         (*Printf.printf "assign %s\n" v.var_name;*)
         D.assign d v e
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let a = D.guard d g in 
                           begin if(a == D.bottom) 
                             then Format.fprintf Format.std_formatter "Assert failed\n" 
                             else () ; a end
      | CFG_call(f)     -> failwith f.func_name in
    (* Compute widening points by using a depth first search algorithm to 
     find looping points *)
    let widening_points =
      let to_visit = Queue.create () in
      Queue.push cfg.cfg_init_entry to_visit;
      (*Printf.printf "%d\n" cfg.cfg_init_entry.node_id;*)
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
        Format.printf "%d\n" n.node_id; flush stdout;
        D.print Format.std_formatter x_i;
        let y' = 
          if List.length n.node_in == 0 
          then x_i
          else 
            List.fold_left 
              (fun d a ->
               (*Printf.printf "%d\n" a.arc_src.node_id;*)
               D.join d (eval (Map.find a.arc_src invs) a.arc_inst)
              ) 
              D.bottom
              n.node_in in
        let y = if Set.mem n widening_points then D.widen x_i y' else y' in
        if D.subset y x_i then
          ((*Printf.printf "next\n";*) iter invs)
        else begin
          List.iter (fun a -> Queue.push a.arc_dst q) n.node_out;
          iter (Map.add n y invs)
        end
    in iter invs


  let bwd_iterate cfg =
    let mapping = iterate cfg in
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n ->
                               Map.add n D.bottom env)
                              Map.empty cfg.cfg_nodes in
    (* d' = eval d i is the domain obtained from the evaluation of 
     instruction i in domain d *)
    let eval d inst src= match inst with
      | CFG_skip(_)     -> d
      | CFG_assign(v,e) -> D.bwd_assign (Map.find src mapping) v e d
      | CFG_guard(g)    -> D.guard d g
      | CFG_assert(g)   -> let b = D.guard d (g) in
                           let a = D.guard d (CFG_bool_unary(AST_NOT, g)) in 
                           begin if a != D.bottom 
                             then Format.printf "Assert failed\n" 
                             else () ; b end
      | _               -> failwith "undefined" in
    (* Compute widening points by using a depth first search algorithm to 
     find looping points *)
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
            (fun d a ->
             D.join d (eval (Map.find a.arc_src invs) a.arc_inst a.arc_src)
            ) 
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

