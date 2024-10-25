type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;

let decide_exam v1 v2 v3 : bool =
  if v1 = StrongReject || v2 = StrongReject || v3 = StrongReject then
    false
  else
    (* Conta quanti voti sono WeakAccept o StrongAccept *)
    let accept_count = 
      (if v1 = WeakAccept || v1 = StrongAccept then 1 else 0) +
      (if v2 = WeakAccept || v2 = StrongAccept then 1 else 0) +
      (if v3 = WeakAccept || v3 = StrongAccept then 1 else 0)
    in
    accept_count >= 2;;

  let () =
  (* Test Cases *)
  assert (decide_exam StrongReject StrongAccept StrongAccept = false);  (* StrongReject overrides, so fails *)
  assert (decide_exam WeakReject StrongAccept WeakAccept = true);       (* Two supports, so passes *)
  assert (decide_exam StrongAccept WeakReject WeakReject = false);       (* Two supports, so passes *)
  assert (decide_exam WeakReject WeakReject StrongReject = false);      (* StrongReject overrides, so fails *)
  assert (decide_exam StrongAccept StrongAccept WeakReject = true);     (* Two supports, so passes *)
  assert (decide_exam StrongReject WeakReject StrongReject = false);     (* StrongReject overrides, so fails *)
  assert (decide_exam WeakAccept WeakAccept WeakReject = true);         (* Two supports, so passes *)

  (* Printing results for verification *)
  Printf.printf "All tests passed!\n"
  
