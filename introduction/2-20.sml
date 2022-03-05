(* 非負整数 n、二項演算関数 f、fに関する単位元 e、値 v *)
fun fastPower (0, f, e, v) = e
  | fastPower (n, f, e, v) =
    let
        val m = n div 2
        val k = n mod 2
        val v' = fastPower(m, f, e, v)
        val v' = f(v', v')
    in
        if k = 0 then v' else f(v, v')
    end ;

fun fastMatrixPower' (n, a, b, c, d) =
    let
        fun matrixMult ((p,q,r,s), (x,y,z,w))  =
            (p*x+q*z, p*y+q*w, r*x+s*z, r*y+s*w)
        val e = (1, 0, 0, 1)
        val v = (a, b, c, d)
    in
        fastPower (n, matrixMult, e, v)
    end ;

use "2-14.sml" ;

fastMatrixPower'(3000000,1,0,0,1) ;