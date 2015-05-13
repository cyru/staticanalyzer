open Domain
open Cfg
open Worklist

module type ITERATOR = sig

  type t

  val print : out_channel -> t -> unit

  val iterate : Cfg.cfg -> t

end

module Worklist = WorklistIter
