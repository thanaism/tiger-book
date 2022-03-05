fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib (n - 2) + fib (n - 1) ;

fun f n m = (fib n) mod m = 0 ;

fun f' n =
    let val a = fib n
    in fn m => a mod m = 0
    end ;

val g = f 35 ;

val start = Timer.startRealTimer() ;
(g 1, g 2, g 3, g 4, g 5) ;
Timer.checkRealTimer(start) ;

val g = f' 35 ;

val start = Timer.startRealTimer() ;
(g 1, g 2, g 3, g 4, g 5) ;
Timer.checkRealTimer(start) ;
