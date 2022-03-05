fun accumulate h z f 1 = h (f 1, z)
  | accumulate h z f n = h (h (f n, z), accumulate h z f (n-1)) ;

fun add (x, y) = x + y ;

fun identity x = x ;

fun f1 n = accumulate add 0 identity n ;
fun f2 n = accumulate add 0 identity n ;

fun Power (x, 0) = 1
  | Power (x, n) =
    let
        val m = n div 2
        val k = n mod 2
        val a = Power(x, m)
    in
        if k = 0 then a * a
        else a * a * x
    end ;

fun f3 (n, x) = 
    let
        fun f3' x 0 = 0
          | f3' x m = m * Power(x, m) 
    in
        accumulate add 0 (f3' x) n
    end ;

f3 (3, 2) ;