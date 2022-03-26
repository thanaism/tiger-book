fun foldl f Z nil = Z
  | foldl f Z (h::t) = foldl f (f (h,Z)) t ;

fun rev L = foldl (fn (h,Z) => h::Z) nil L