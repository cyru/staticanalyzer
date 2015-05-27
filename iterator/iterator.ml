open Domain
open Cfg

module type ITERATOR = sig

  type t

  val print : Format.formatter -> t -> unit

  val iterate : Cfg.cfg -> t

  val transformCfg : Cfg.cfg -> Cfg.cfg

end

module Worklist = Worklist.WorklistIter
module WorklistInter = Worklistinter.WorklistIter
