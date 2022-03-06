fun K x y = x ;


val T = 1.0 ;
(*
関数fにはTとexpが適用されており、Tとexpの型は等しくなる
fn f => fn g => g (f T) (f exp)

より簡単に、以下でも書けそう
fn f => (f T, f exp)
 *)

(*
式expを引数として受け取る
ただし、この式の値はexpと異なる
 *)
fn exp => fn f => fn g => g(f T) (f exp) ;
fn exp => fn f => (f T, f exp) ;

(* Kコンビネータを用いて、expを恒等的に返す *)
fn exp => K exp (fn f => fn g => g (f T) (f exp)) ;
fn exp => K exp (fn f => (f T, f exp)) ;