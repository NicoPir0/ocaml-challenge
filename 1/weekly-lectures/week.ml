type weekday = Mo | Tu | We | Th | Fr;;

type course = ALF | LIP;;

let isLecture (d : weekday) (c : course) : bool = 
  match c with 
  | ALF ->  (d = Tu) || (d = Th) || (d = Fr)
  | LIP ->  (d = We) || (d = Th);;

assert (isLecture Tu ALF = true);;
assert (isLecture Mo ALF = false);; 
assert (isLecture Th LIP = true);;  
assert (isLecture Fr LIP = false);; 
