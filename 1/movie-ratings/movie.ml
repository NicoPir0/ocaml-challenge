let movie_rating (a : int) (b : int) (c : int) : string =
  if a < 1 || a > 5 || b < 1 || b > 5 || c < 1 || c > 5 then failwith "il rating non è nel range" 
  (*else if a == 5 && b == 5 && c == 5 then Printf.printf "Masterpiece" *)
  else 
    let fivestar_count = 
      (if a == 5 then 1 else 0) + (if b == 5 then 1 else 0) + (if c == 5 then 1 else 0) in
      if fivestar_count == 3 then "Masterpiece"
      else if fivestar_count == 2 && (a == 4 || b == 4 || c == 4) then "Highly Recommended"
      else 
        let fourstar_count = 
          (if a == 5 || a == 4 then 1 else 0) + (if b == 5 || b == 4 then 1 else 0) + (if c == 5 || c == 4 then 1 else 0) in
          if fourstar_count == 3 || (fourstar_count == 2 && ( a == 3 || a == 5 || b == 3 || b == 5 || c == 3 || c == 5 )) 
            then "Recommended"
          else "Mixed Reviews";;


assert (movie_rating 5 5 5 = "Masterpiece");;

assert (movie_rating 5 5 4 = "Highly Recommended");;
assert (movie_rating 5 4 5 = "Highly Recommended");;
assert (movie_rating 4 5 5 = "Highly Recommended");;

assert (movie_rating 4 4 3 = "Recommended");;
assert (movie_rating 4 3 4 = "Recommended");;
assert (movie_rating 3 5 4 = "Recommended");;

assert (movie_rating 3 3 3 = "Mixed Reviews");;
assert (movie_rating 5 3 3 = "Mixed Reviews");;
assert (movie_rating 4 2 4 = "Mixed Reviews");;

assert (try movie_rating 6 5 4 |> fun _ -> false with _ -> true);;
assert (try movie_rating 3 0 4 |> fun _ -> false with _ -> true);;
assert (try movie_rating 2 (-1) 5 |> fun _ -> false with _ -> true);;
assert (try movie_rating 5 5 7 |> fun _ -> false with _ -> true);;
