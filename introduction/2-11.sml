fun F x = if x >= 1000.0 then 0.02 else 0.01 + 0.01 * x / 1000.0 ;

fun auxAI (0, x, i) = (x, i)
  | auxAI (k, x, i) = 
    let
        val i_ = F(x)
        val x_ = x * (1.0 + i_)
    in
        auxAI (k - 1, x_, i_)
    end ;

fun fastAI (x, n) = auxAI (n, x, F(x)) ;

fastAI (100.0, 10) ;
fastAI (100.0, 25) ;
fastAI (100.0, 30) ;
fastAI (100.0, 100) ;
fastAI (100.0, 1000) ;