module Ex02a

open FStar.Exn
open FStar.All

val is_positive : int -> Tot bool
let is_positive i = i > 0

val max : int -> int -> Tot int
let max i1 i2 = if i1 > i2 then i1 else i2

let x = is_positive (max 1 2)

type filename = string

val canWrite : filename -> Tot bool
let canWrite (f:filename) = 
    match f with
        | "demo/tempfile" -> true
        | _ -> false

val canRead : filename -> Tot bool
let canRead (f:filename) =
    canWrite f
    || f = "demo/README"
    