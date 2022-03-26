fun map f L = foldr (fn (h, R) => f h :: R) [] L ;
fun concat L1 L2 = foldr (fn (h, R) => h :: R) L2 L1 ;
fun filter f L = foldr (fn (h, R) => if f h then h::R else R) [] L ;
fun flatten L = foldr (fn (h,R) => h @ R) [] L ;
fun permutations L = foldr (fn (h,R) => foldr (fn (a,b) => 
    let
        fun insert x nil = [[x]]
          | insert x (h::t) = (x::(h::t))::(map (fn h' => h::h') (insert x t))
    in
        insert h a @ b
    end
) nil R) [nil] L ;
fun member x L = foldr (fn (h,R) => h=x orelse R) false L ;
fun unique L = foldr (fn (h,R) => if member h R then R else h::R) nil L ;
fun prefixList L = foldr (fn (h,R) => [h]::(map (fn x => h::x) R)) [] L ;