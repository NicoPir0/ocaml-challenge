let parrot_trouble (parla : bool) (h: int) : bool option =
  if h < 0 || h > 23 then None
  else if parla && (h < 7 || h > 20) then Some true else Some false

  let () =
  assert (parrot_trouble true 6 = Some true);  
  assert (parrot_trouble true 7 = Some false); 
  assert (parrot_trouble true 20 = Some false); 
  assert (parrot_trouble true 21 = Some true);  
  assert (parrot_trouble false 6 = Some false); 
  assert (parrot_trouble false 20 = Some false); 
  assert (parrot_trouble true 23 = Some true);  
  assert (parrot_trouble true (-1) = None);
  assert (parrot_trouble true 24 = None);       

  Printf.printf "Tutti i test passati\n";;
