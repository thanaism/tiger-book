val L = [1,2,3] ;

val g = fn x => x * 2 ;
val f = fn (h, R) => g h :: R ;
val Z = [] ;

val it = map g L ;
val it = foldr f Z L ;

val L1 = [1,2,3] ;
val L2 = [4,5,6] ;
val f = fn (h, R) => h :: R ;
val Z = L2 ;
val it = L1 @ L2 ;
val it = foldr f Z L1 ;

val L = [1,4,2,5,2,4,2,6] ;
val f = fn x => x > 2 ;
val f = fn (h, R) => if f h then h::R else R ;
val Z = [] ;
(* val it = filter f L ; *)
val it = foldr f Z L ;

val L = [[1,2],[3,4],[5,6]] ;
val Z = nil ;
val f = fn (h,R) => h @ R ;
val it = foldr f Z L ;

val L = [1,2,3] ;
val Z = [nil] ;

(* リストを受け取って、各位置にxを挿入したリストのリストを返す関数 *)
(* 
insert x [1,2,3,4]
[x,1,2,3,4]::(map (fn L => 1::L) (insert x [2,3,4]))
[x,1,2,3,4]::(1::[x,2,3,4]::(1::2::[x,3,4]::(1::2::3::[x,4]::(1::2::3::4::[x]))))
 *)
fun insert x nil = [[x]]
  | insert x (h::t) = (x::(h::t))::(map (fn h' => h::h') (insert x t)) ;

val f = fn (h,R) => foldr (fn (a,b) => insert h a @ b) nil R ;
val it = foldr f Z L ;