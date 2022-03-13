fun null' nil = true
  | null' (h::_) = false ;

fun hd' (h::_) = h ;

fun tl' (_::t) = t ; 