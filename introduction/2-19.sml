fun Power (0, x) = 1
  | Power (n, x) =
    let
        val m = n div 2
        val k = n mod 2
        val a = Power(m, x)
    in
        if k = 0 then a * a
        else a * a * x
    end ;

fun power 0 x = 1
  | power n x = x * power (n-1) x ;

fun Power' (n, x) = power n x ;
fun power' n x = (fn x' => Power (n, x')) x ;

power 10 2 ;
Power (10, 2) ;
power' 10 2 ;
Power' (10, 2) ;

fun curry f = fn (x, y) => f x y ;
fun uncurry f = fn x  => (fn y => f (x, y)) ;

val Power'' = curry power ;
val power'' = uncurry Power ;

power'' 10 2 ;
Power'' (10, 2) ;
