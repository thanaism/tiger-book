fun fastFib 0 = 0
  | fastFib 1 = 1
  | fastFib n = g (n, 0, 1)
and g (0, a, b) = a
  | g (1, a, b) = b
  | g (n, a, b) = g (n - 1, b, a + b) ;


fastFib 6 ;
fastFib 20 ;
fastFib 50 ;
