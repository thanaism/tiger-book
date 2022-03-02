fun fastMatrixPower (0,a,b,c,d) = (1,0,0,1)
  | fastMatrixPower (n,a,b,c,d) = 
    let
        val m = n div 2
        val k = n mod 2
        val (x,y,z,w) = fastMatrixPower(m,a,b,c,d)
        val (x',y',z',w') = (x*x+y*z,x*y+y*w,z*x+w*z,z*y+w*w)
    in
        if k = 1 then
            (a*x'+b*z',a*y'+b*w',c*x'+d*z',c*y'+d*w')
        else
            (x',y',z',w')
    end ;

fun veryFastFib' 0 = 0
  | veryFastFib' 1 = 1
  | veryFastFib' n =
    let
        val (a,b,c,d) = fastMatrixPower(n,0,1,1,1)
    in
        b 
    end ;

fun veryFastFib n =
    let
        val (a,b,c,d) = fastMatrixPower(n,0,1,1,1)
    in
        b 
    end ;

use "2-13.sml" ;

veryFastFib 6 ;
veryFastFib 20 ;
veryFastFib 50 ;

matrixPower(3000000,1,0,0,1) ;
fastMatrixPower(3000000,1,0,0,1) ;
