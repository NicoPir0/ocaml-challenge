let best_offer(o1 : int option) (o2 : int option) (o3 : int option) : int option = 
  if o1 >= o2 && o1 >= o3 then o1
  else if o2 >= o1 && o2 >= o3 then o2
  else if o3 >= o2 && o3 >= o1 then o3
  else None;;

assert (best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert (best_offer (Some 100) None (Some 150) = Some 150);;
assert (best_offer None (Some 300) (Some 200) = Some 300);;

assert (best_offer None (Some 300) None = Some 300);;
assert (best_offer (Some 50) None None = Some 50);;

assert (best_offer None None None = None);;

assert (best_offer (Some 100) (Some 100) (Some 100) = Some 100);;

assert (best_offer (Some 250) None (Some 150) = Some 250);;
assert (best_offer None (Some 100) (Some 150) = Some 150);;
