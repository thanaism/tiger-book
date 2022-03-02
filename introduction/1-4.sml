val between = 
    if ord #"A" < ord #"a" then
        ord #"a" - ord #"Z"
    else
        ord #"A" - ord #"z"

fun concat i s = 
    if i <= ord #"Z" then
        concat (i+1) s
    else
        if i < ord #"a" then
            let
                val t = str (chr i)
            in
                concat (i+1) (s^t)
            end
        else
            s

val ans = concat 0 ""