type season = Spring | Summer | Autumn | Winter;;

let squirrel_play ( n : int)( s : season) : bool = 
  if s == Summer && ( n >= 15 && n<= 35) then true 
  else if s != Summer && ( n >= 15 && n<= 30) then true 
  else false;;

  assert(squirrel_play 18 Winter = true);;
  assert(squirrel_play 32 Spring = false);;
  assert(squirrel_play 32 Summer = true);;