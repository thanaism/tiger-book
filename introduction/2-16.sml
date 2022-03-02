fun summation' f 1 = f 1 :real
  | summation' f n = f n + summation' f (n-1) :real ;

val f1 = summation' (fn x => real x) ;
val f2 = summation' (fn x => real (x*x)) ;
val f3 =
    let
        fun f 1 = real 1
          | f x = real x + f(x-1)
    in
        summation' f 
    end ;

f1 10 ;
f2 3 ;
f3 3 ;