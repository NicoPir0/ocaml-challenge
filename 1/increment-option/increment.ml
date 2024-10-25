let incr_opt(n : int option) : int option = 
match n with
| Some n -> Some (n +1)
| None -> None;;


let () =
  assert (incr_opt (Some 5) = Some 6);  
  assert (incr_opt None = None);        

  Printf.printf "Tutti i test passati\n";;