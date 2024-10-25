let nand(a : bool ) (b: bool ) : bool = not(a||b);;

let nand2(a : bool) (b: bool) : bool =
  if(a&&b) then false else true;;

let nand3(a:bool) (b:bool) : bool = 
  match (a&&b) with 
  (true) -> false 
  |_-> true;;

assert(nand true false = (true));;
assert(nand true true = (false));;

assert(nand2 true false = (true));;

assert(nand3 true false = (true));;


