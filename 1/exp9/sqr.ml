let square (a :int) : int = 
  a * a;;

let exp9 ( x : int) : int =
  let x3 = x * square x in
  x3 * square x3;;
