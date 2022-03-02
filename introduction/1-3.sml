fun lower c = 
    let
        val d = ord #"a" - ord #"A"
    in
        chr (d + ord c)
    end

