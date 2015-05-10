open Domain

module Iterator (D : DOMAIN) =
  module Map = Mapext.Make
    (struct type = Cfg.node let compare n1 n2 = compare n1.node_id n2.node_id end)
  
  type invs = D.t Map

  let 
