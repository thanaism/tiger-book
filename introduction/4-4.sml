use "4-3.sml" ;

fun lower s = implode (map toLower (explode s)) ;
fun upper s = implode (map toUpper (explode s)) ;