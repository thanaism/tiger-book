fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib(n-1) + fib(n-2) ;

fun memo f x = let val a = f x
               in fn y => if y = x then a else f y
               end ;

fun fib' (x, y) = (fib x, fib y) ;

val fib' = memo fib' (40, 40) ;

fib' (41, 41) ;
fib' (40, 40) ;