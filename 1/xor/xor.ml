let xor(a : bool ) (b: bool ) : bool = (a || b) && not (a && b);;

let xor2(a : bool) (b: bool) : bool =
  if(a==b) then false else true;;

let xor3(a:bool) (b:bool) : bool = 
  match (a==b) with 
  | (true) -> false 
  |  _     -> true;;

assert(xor true false = (true));;
assert(xor true true = (false));;

assert(xor2 true false = (true));;
assert(xor2 false false = (false));;

assert(xor3 true false = (true));;
assert(xor3 true true = (true));;


