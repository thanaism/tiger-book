(* fun F x = if x >= 1000.0 then 0.02 else 0.01 + 0.01 * x / 1000.0 ; *)

(* 作者ホームページの解答が以下のようになっているがFが間違っていると思われる *)
fun F x =
    if x >= 2000.0 then
        0.02
    else
        0.01 + 0.01 * (x - 1000.0) / 1000.0 ;

fun I (x, n) = F (A (x, n - 1))
and A (x, 0) = x
  | A (x, n) = A (x, n - 1) * (1.0 + I (x, n)) ;

A (900.0, 10) ;
A (900.0, 25) ;
A (900.0, 30) ;
