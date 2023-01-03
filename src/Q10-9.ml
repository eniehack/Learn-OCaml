let rec equal_length lst1 lst2 = match (lst1, lst2) with
  ([], []) -> true
  | ([], l2) -> false
  | (l1, []) -> false
  | (first :: rest, first2 :: rest2) -> equal_length rest rest2

let test1 = equal_length [] [] = true
let test2 = equal_length [1] [] = false
let test3 = equal_length [2] [2] = true
let test4 = equal_length [2;7;9] [6;5;0] = true
let test5 = equal_length [2;7;9] [5;9] = false
