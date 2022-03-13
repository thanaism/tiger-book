fun op @ (L1, L2) = if null L1 then L2 else (hd L1)::((tl L1)@L2) ;

fun rev L = if null L then nil else rev(tl L)@[hd L] ;

fun map f L = if null L then nil else f(hd L)::(map f (tl L)) ;