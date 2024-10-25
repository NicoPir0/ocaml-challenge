let mltplx (s0 : bool) (a : bool ) (b: bool ) : bool = (s0 && a) || ((not s0) && b);;

let mltplx2(s0 : bool)(a : bool) (b: bool) : bool =
  if(s0 == true) then a else b;;

let mltplx3(s0 : bool)(a:bool) (b:bool) : bool = 
  match (s0) with 
  | (true) -> a 
  |  _     -> b;;