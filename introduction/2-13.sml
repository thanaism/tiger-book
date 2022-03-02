fun matrixPower (0,a,b,c,d) = (1,0,0,1)
  | matrixPower (n,a,b,c,d) = let val (x,y,z,w) = matrixPower(n-1,a,b,c,d)
                              in (a*x+b*z,a*y+b*w,c*x+d*z,c*y+d*w)
                              end ;

fun fastFib' 0 = 0
  | fastFib' 1 = 1
  | fastFib' n = let val (a,b,c,d) = matrixPower(n,0,1,1,1)
                 in b 
                 end ;

use "2-7.sml" ;

fastFib' 6 ;
fastFib' 20 ;
fastFib' 50 ;