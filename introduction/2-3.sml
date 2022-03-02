fun f 0 = 0
  | f n = n + f (n - 1) ;

fun g 0 = 0
  | g n = f n + g (n - 1) ;

f 3 ;
g 3 ;