(*
SML#だと以下の定義が通るらしい。
SML/NJだったので、どうりで解けないと思った。
val sharp_l = fn {l,...} => l ;
*)

(*
以下もメタ表現なので具体例がないと実際には使用できない。
fn Y => 
    let
        val X1 = #L1 Y
        val X2 = #L2 Y
        ...
        val Xn = #Ln Y
    in
        EXP
    end ;
*)