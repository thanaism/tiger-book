fun & x = x mod 16 ;
fun &+ (x, y) = ((x mod 16) + (y mod 16)) mod 16 ;
infix 8 &+ ;
fun &- (x, y) = ((x mod 16) - (y mod 16)) mod 16 ;
infix 9 &- ;
fun &* (x, y) = ((x mod 16) * (y mod 16)) mod 16 ;
infix 9 &* ;
fun &= (x, y) = (x mod 16) = (y mod 16) ;
infix 2 &= ;

17 &+ 19 ;
20 &- 32 ;
33 &* 50 ;
16 &= 32 ;
