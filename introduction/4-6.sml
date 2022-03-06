fun match s1 s2 =
    let 
        val maxIndex1 = size s1 - 1
        val maxIndex2 = size s2 - 1
        fun nextStartPos (i, j) =
            if j = maxIndex2 then (i + 1, 0)
            else (i, j + 1)
        fun findMatch (from1, from2) (start1, start2, max) =
            if from1 > maxIndex1 orelse from2 > maxIndex2 then
                (start1, start2, max)
            else
                let
                    fun advance n =
                        if from1 + n <= maxIndex1 andalso from2 + n <= maxIndex2 then
                          if substring(s1, from1 + n, 1) = substring(s2, from2 + n, 1) then
                              advance (n + 1)
                          else n
                        else n
                    val newSize = advance 0
                in
                    if max < newSize then
                        findMatch (nextStartPos(from1, from2)) (from1, from2, newSize)
                    else
                        findMatch (nextStartPos(from1, from2)) (start1, start2, max)
                end
    in
        findMatch (0, 0) (0, 0, 0)
    end ;