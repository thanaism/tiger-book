fun F x = if x >= 1000.0 then 0.02 else 0.01 + 0.01 * x / 1000.0 ;

fun I (x, n) = F (A (x, n - 1))
and A (x, 0) = x
  | A (x, n) = A (x, n - 1) * (1.0 + I (x, n)) ;

A (100.0, 10) ;
A (100.0, 25) ;
A (100.0, 30) ;

(*
val F = fn : real -> real
val I = fn : real * int -> real
val A = fn : real * int -> real
val it = 111.617210401 : real
val it = 131.928179596 : real
val it = 139.586671855 : real
*)