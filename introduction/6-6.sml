fun sumList nil = 0
  | sumList L = (hd L) + (sumList (tl L)) ;

fun member x nil = false
  | member x (h::t) = (h = x) orelse (member x t) ;

fun unique nil = nil
  | unique (h::t) = 
        let
            val t' = unique t
        in
            if member h t' then t'
            else h::t'
        end ;

fun filter P nil = nil
  | filter P (h::t) =
        let
            val t' = filter P t
        in
            if P h then h::t' else t'
        end ;

fun flatten nil = nil
  | flatten (h::t') = h@(flatten t') ;

fun splice (nil, _) = ""
  | splice ([x], _) = x
  | splice ((h::t), s) = h^s^(splice (t,s)) ;