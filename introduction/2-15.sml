fun summation f 1 = f 1
  | summation f n = f n + summation f (n-1) ;

val f1 = summation (fn x => x) ;
val f2 = summation (fn x => x*x) ;
val f3 =
    let
        fun f 1 = 1
          | f x = x + f(x-1)
    in
        summation f 
    end ;

f1 10 ;
f2 3 ;
f3 3 ;