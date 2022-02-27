type id = string

datatype binop = Plus | Minus | Times | Div

datatype stm = CompoundStm of stm * stm
             | AssignStm of id * exp
             | PrintStm of exp list
     and exp = IdExp of id
             | NumExp of int
             | OpExp of exp * binop * exp
             | EseqExp of stm * exp
        
val prog = 
  CompoundStm(AssignStm("a",OpExp(NumExp 5, Plus, NumExp 3)),
    CompoundStm(AssignStm("b",
      EseqExp(PrintStm[IdExp"a",OpExp(IdExp"a", Minus,NumExp 1)],
        OpExp(NumExp 10, Times, IdExp"a"))),
    PrintStm[IdExp "b"]))

fun max x y = if x > y then x else y

fun maxargs(CompoundStm(s1, s2)) = max (maxargs s1) (maxargs s2)
  | maxargs(AssignStm(i, e)) = maxargs__ e
  | maxargs(PrintStm es) = max (length es) (maxargs_ es)
and maxargs_ [] = 0
  | maxargs_ (e::es) = max (maxargs__ e) (maxargs_ es)
and maxargs__(IdExp e) = 0
  | maxargs__(NumExp e) = 0
  | maxargs__(OpExp(e1, b, e2)) = max (maxargs__ e1) (maxargs__ e2)
  | maxargs__(EseqExp(s, e)) = max (maxargs s) (maxargs__ e)
