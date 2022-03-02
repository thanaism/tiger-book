fun x(0,a,b,c,d) = 1
  | x(n,a,b,c,d) = a * x(n-1,a,b,c,d) + b * z(n-1,a,b,c,d)
and y(0,a,b,c,d) = 1
  | y(n,a,b,c,d) = a * y(n-1,a,b,c,d) + b * w(n-1,a,b,c,d)
and z(0,a,b,c,d) = 1
  | z(n,a,b,c,d) = a * x(n-1,a,b,c,d) + b * z(n-1,a,b,c,d)
and w(0,a,b,c,d) = 1
  | w(n,a,b,c,d) = a * y(n-1,a,b,c,d) + b * w(n-1,a,b,c,d) ;

fun matrixPower (0,a,b,c,d) = (1,0,0,1)
  | matrixPower (n,a,b,c,d) = let val (x,y,z,w) = matrixPower(n-1,a,b,c,d)
                              in (a*x+b*z,a*y+b*w,c*x+d*z,c*y+d*w)
                              end ;

x(20,1,0,0,1) ;
matrixPower(20,1,0,0,1) ;
x(30,1,0,0,1) ;
matrixPower(30,1,0,0,1) ;
                      
