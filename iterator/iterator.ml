open Domain
open Cfg
open Worklist

module type ITERATOR = sig

  type t

  val print : out_channel -> t -> unit

  val iterate : Cfg.cfg -> t

  val transformCfg : Cfg.cfg -> Cfg.cfg

end

module Worklist = WorklistIter
module WorklistInter = Worklistinter.WorklistIter
