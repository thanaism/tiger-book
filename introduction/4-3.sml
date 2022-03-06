fun isSpace c =
    c = #" "
    orelse c = #"\b"
    orelse c = #"\t"
    orelse c = #"\v"
    orelse c = #"\n"
    orelse c = #"\f" ;

fun isLower c = c >= #"a" andalso c <= #"z" ;
fun isUpper c = c >= #"A" andalso c <= #"Z" ;
fun isNum c = c >= #"0" andalso c <= #"9" ;
fun isAlpha c = isLower c orelse isUpper c ;
fun isAlphaNumeric c = isAlpha c orelse isNum c ;
fun toLower c = if isUpper c then chr (ord c + 32) else c ;
fun toUpper c = if isLower c then chr (ord c - 32) else c ;