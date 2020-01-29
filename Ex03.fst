module Ex03

open FStar.Exn
open FStar.All
open FStar.Mul

val max : int -> int -> Tot int
let max x y = if x > y then x else y

let _ = assert (max 0 1 = 1)

let _ = assert (
            forall x y. max x y >= x
            && max x y >= y
            && (max x y = x || max x y = y)
        )

val factorial: nat -> Tot nat
let rec factorial n = 
  if n = 0 then 1 else n * (factorial (n - 1))

val fibonacci : nat -> Tot nat
let rec fibonacci n =
    if n <= 1 then 1 else fibonacci (n - 1) + fibonacci (n - 2)