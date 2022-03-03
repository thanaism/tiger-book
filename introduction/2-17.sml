use "2-16.sml" ;

fun integral f n a b = 
    let
        val c = b - a
        val n' = real n
        val m = c/n'
        fun g k = f(real k*m+a) * m
    in
        summation' g n
    end ;

fun f n = integral (fn x:real => x*x*x) n 0.0 1.0 ;

f 1000 ;
f 10000 ;
f 100000 ;
f 1000000 ;
