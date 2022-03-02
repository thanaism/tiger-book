fun fib 0 = 0
  | fib 1 = 1
  | fib n = fib (n - 2) + fib (n - 1) ;

fib 6 ;
fib 20 ;
fib 25 ;
fib 30 ;
fib 35 ;
fib 40 ;
