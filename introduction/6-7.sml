fun flatten nil = nil
  | flatten (h::t') = h@(flatten t') ;

fun permutations nil = nil
  | permutations [x] = [[x]]
  | permutations (h::t) =
        let
            val t' = permutations t
            fun insert s nil = [[s]]
              | insert s (x::xs) = (s::(x::xs))::(map (fn x' => x::x') (insert s xs))
        in
            flatten (map (fn x => insert h x) t')
        end ;

fun prefixList nil = nil
  | prefixList (h::t) = [h]::(map (fn x => h::x) (prefixList t)) ;

fun suffixList nil = [nil]
  | suffixList (h::t) = (h::t)::suffixList t ;

fun allIntervals nil = nil
  | allIntervals L = flatten(map (fn x => prefixList x) (suffixList L)) ;

(* 
当初書いた誤り
基本の高階関数を使ってスマートに書けないか検討すべし
fun powerSet nil = []
  | powerSet (h::t) =
    let
        fun pushFront a nil = [[a]]
          | pushFront a (x::xs) = (a::x)::(pushFront a xs)
        val l1 = powerSet t
        val l2 = pushFront h l1
    in
        l1@l2
    end ;
 *)

fun powerSet nil = [[]]
  | powerSet (h::t) =
        let
            val l = powerSet t
        in
            map (fn x => h::x) l @ l
        end ;

fun filter f nil = nil
  | filter f (h::t) =
        if f h then h::(filter f t)
        else filter f t ;

fun allPermutations L n =
        let
            val L' = filter (fn x => length x = n) (powerSet L)
        in
            flatten (map permutations L')
        end ;