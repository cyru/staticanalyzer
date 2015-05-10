open Domain

module Iterator (D : DOMAIN) = struct
  module Map = Mapext.Make
    (struct type = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)
  
  type invs = D.t Map

  (* simple inter procedural analysis *)
  let iterate cfg =
    let q = Queue.create () in
    List.iter (fun n -> Queue.push n q) cfg.cfg_nodes;
    let invs = List.fold_left (fun env n -> Map.add n D.bottom env) Map.empty cfg.cfg_nodes in
    let iter invs =
      if Queue.is_empty q then invs
      else
        let y = Queue.pop q in
        invs
    in failwith "undefined"
end
