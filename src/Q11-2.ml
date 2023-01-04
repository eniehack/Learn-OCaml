(* 目的: n-1での値を用いて漸化式を計算する *)
(* aux: int -> int -> int*)
let rec aux n acc =
  if n = 0
  then acc
  else aux (n - 1) (2 * acc -1)

let test1 = aux 0 3 = 3
let test2 = aux 1 3 = 5
let test3 = aux 2 3 = 9

(* 目的: 漸化式を計算する *)
(* aux: int -> int*)
let a n =
  let rec aux n acc =
    if n = 0
    then acc
    else aux (n - 1) (2 * acc -1) in
  aux n 3

let test4 = a 0 = 3
let test5 = a 1 = 5
let test6 = a 2 = 9
