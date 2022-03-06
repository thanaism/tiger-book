fun isPrefix "" t = true
  | isPrefix s t =
    let
        val n = size s
        val m = size t
    in
        if n > m then false
        else s = substring (t, 0, n)
    end ;
