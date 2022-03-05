val emptySet = fn x => false ;
fun singleton n = fn x => x = n ;
fun insert S n = fn x => S x orelse x = n ;
fun member S n = S n;
fun union S T = fn x => S x orelse T x;
fun intersection S T = fn x => S x andalso T x;
fun difference S T = fn x => S x orelse not (T x) ;
