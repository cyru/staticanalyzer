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

module D = Domain

(*module It = Iterator.Worklist(Domain.NonRelational(Domain.Interval)) *)
module InterI = Iterator.Worklist(D.NonRelational(D.Interval))
module InterC = Iterator.Worklist(D.NonRelational(D.Constant))
module InterR = Iterator.Worklist(D.Relational)
module IntraI = Iterator.WorklistInter(D.NonRelational(D.Interval))
module IntraC = Iterator.WorklistInter(D.NonRelational(D.Constant))
module IntraR = Iterator.WorklistInter(D.Relational)


let inter = ref false
let relat = ref false
let cst   = ref false

(* parse filename *)
let doit filename =
  let prog = File_parser.parse_file filename in
  let cfg = Tree_to_cfg.prog prog in
  if !inter then begin
    if !relat then begin
      Format.printf "%a" Cfg_printer.print_cfg (InterR.transformCfg cfg);
      Cfg_printer.output_dot "cfg.dot" cfg;
      InterR.print Format.std_formatter (InterR.iterate cfg)
    end else begin
      if !cst then begin
        Format.printf "%a" Cfg_printer.print_cfg (InterC.transformCfg cfg);
        Cfg_printer.output_dot "cfg.dot" cfg;
        InterC.print Format.std_formatter (InterC.iterate cfg)
      end else begin
        Format.printf "will iterate\n";
        Format.printf "%a" Cfg_printer.print_cfg (InterI.transformCfg cfg);
        Cfg_printer.output_dot "cfg.dot" cfg;
        InterI.print Format.std_formatter (InterI.iterate cfg)
      end
    end
  end else begin
    if !relat then begin
      Format.printf "%a" Cfg_printer.print_cfg (IntraR.transformCfg cfg);
      Cfg_printer.output_dot "cfg.dot" cfg;
      IntraR.print Format.std_formatter (IntraR.iterate cfg)
    end else begin
      if !cst then begin
        Format.printf "%a" Cfg_printer.print_cfg (InterC.transformCfg cfg);
        Cfg_printer.output_dot "cfg.dot" cfg;
        InterC.print Format.std_formatter (InterC.iterate cfg)
      end else begin
        Format.printf "%a" Cfg_printer.print_cfg (InterI.transformCfg cfg);
        Cfg_printer.output_dot "cfg.dot" cfg;
        InterI.print Format.std_formatter (InterI.iterate cfg)
      end
    end
  end
  

(* parses arguments to get filename *)
let main () =
  (*try match Array.to_list Sys.argv with
  | _::filename::_ -> doit filename
  | _ -> invalid_arg "no source file specified"
  with Manager.Error(e) -> Printf.printf "%s\n" e.Manager.msg*)
  let speclist =
    [("--inter", Arg.Set inter, "Only interprocedural");
     ("--relat", Arg.Set relat, "Use relational domain");
     ("--cst", Arg.Set cst, "Use constant domain")] in
  let usageMessage = "Statan is a simple satic analyzer for a toy language:\n \
                      Usage: statan [--inter] [--relat] [--cst] test_file\n \
                      cst has the priority over relat\n" in
  Arg.parse speclist doit usageMessage

let _ = main ()
