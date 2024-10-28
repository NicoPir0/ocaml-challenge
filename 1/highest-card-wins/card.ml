type card = Joker | Val of int;;

let win ( a : card) (b : card) : bool = 
  match (a, b) with 
 |  (Joker, Joker) -> false 
 |  (Joker, _ ) -> true
 |  (_, Joker) -> false 
 |  (_ , _ ) -> a > b;;


assert (win Joker Joker = false);;
assert (win Joker (Val 5) = true);;
assert (win Joker (Val 10) = true);;
assert (win (Val 3) Joker = false);;
assert (win (Val 8) Joker = false);;
assert (win (Val 10) (Val 7) = true);;
assert (win (Val 6) (Val 5) = true);;
assert (win (Val 4) (Val 9) = false);;
assert (win (Val 1) (Val 2) = false);;
assert (win (Val 5) (Val 5) = false);;
