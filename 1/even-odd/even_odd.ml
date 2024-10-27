let is_even( x : int) : bool = 
  match x mod 2 with
  | 0 -> true 
  | _ -> false;;

let win (a : int) (b : int) : int = 
  if (a < 1 || a > 5) && (b < 1 || b > 5) then 0
  else if a < 1 || a > 5 then (-1)
  else if b < 1 || b > 5 then 1
  else if is_even(a+b) then 1
  else (-1);;

assert (win 2 2 = 1);; 
assert (win 3 5 = 1);;  

assert (win 2 3 = -1);; 
assert (win 4 5 = -1);; 

assert (win 3 6 = 1);;  
assert (win 5 0 = 1);;  

assert (win 6 3 = -1);; 
assert (win 0 4 = -1);; 

assert (win 6 6 = 0);;  
assert (win 0 0 = 0);; 

assert (win 1 1 = 1);;  
assert (win 5 5 = 1);;  
assert (win 1 4 = -1);; 
assert (win 3 2 = -1);; 

