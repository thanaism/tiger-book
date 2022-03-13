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