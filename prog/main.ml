(*
  Cours "Sémantique et Application à la Vérification de programmes"
  
  Antoine Miné 2015
  Ecole normale supérieure, Paris, France / CNRS / INRIA
*)

(*
  Simple driver: parses the file given as argument and prints it back.

  You should modify this file to call your functions instead!
*)
open Apron

(*module It = Iterator.Worklist(Domain.NonRelational(Domain.Interval)) *)
module It = Iterator.WorklistInter(Domain.Relational)

(* parse filename *)
let doit filename =
  let prog = File_parser.parse_file filename in
  let cfg = Tree_to_cfg.prog prog in
  Format.printf "%a" Cfg_printer.print_cfg (It.transformCfg cfg);
  Cfg_printer.output_dot "cfg.dot" cfg;
  It.print Format.std_formatter (It.iterate cfg)
  

(* parses arguments to get filename *)
let main () =
  try match Array.to_list Sys.argv with
  | _::filename::_ -> doit filename
  | _ -> invalid_arg "no source file specified"
  with Manager.Error(e) -> Printf.printf "%s\n" e.Manager.msg

let _ = main ()
