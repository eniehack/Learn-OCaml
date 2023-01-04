(* sum_of_square_aux: int -> int *)
let rec sum_of_square_aux n acc =
  if n = 0
  then acc
  else sum_of_square_aux (n - 1) (acc + n * n)

let test3 = sum_of_square_aux 0 0 = 0
let test3 = sum_of_square_aux 4 0 = 30

(* sum_of_square: int -> int *)
let sum_of_square n =
  let rec sum_of_square_aux = (fun n acc ->
    if n = 0
    then acc
    else sum_of_square_aux (n - 1) (acc + n * n)) in
  sum_of_square_aux n 0

let test1 = sum_of_square 0 = 0
let test2 = sum_of_square 4 = 30
