fun F x = if x >= 1000.0 then 0.02
    else 0.01 + 0.01 * x / 1000.0 ;

(* 作者ホームページ解答は以下だが、誤りと思われる *)
(* fun F x = if x >= 2000.0 then 0.02
    else 0.01 + 0.01 * (x - 1000.0) / 1000.0 ; *)

fun auxAI (0, x, i) = (x, i)
  | auxAI (k, x, i) = 
    let
        val i_ = F(x)
        val x_ = x * (1.0 + i_)
    in
        auxAI (k - 1, x_, i_)
        (* 作者ホームページ解答は以下だが、誤りと思われる *)
        (* auxAI (k - 1, x_, i_ + 1.0) *)
    end ;

fun fastAI (x, n) = auxAI (n, x, F(x)) ;

fastAI (900.0, 10) ;
fastAI (900.0, 100) ;
fastAI (900.0, 1000) ;