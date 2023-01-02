(* あらかじめ昇順に並んでいる整数のリストlstと整数nを受け取ったら、昇順になるようにlstにnを挿入する *)
(* insert int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> n :: []
    |    first :: rest ->
            if first >= n
            then n :: first :: rest
            else first :: (insert rest n)

(* ins_sort_aux : 'a list -> 'a list -> 'a list *)
let rec ins_sort_aux sorted_lst lst = match lst with
    [] -> sorted_lst
  | first :: rest -> ins_sort_aux (insert sorted_lst first) rest

let test1 = ins_sort_aux [3; 5] [8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test2 = ins_sort_aux [] [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test3 = ins_sort_aux [] [] = []
let test3 = ins_sort_aux [] [2] = [2]

(* ins_sort : 'a list -> 'a list *)
let ins_sort lst = match lst with
    [] -> []
  | first :: rest -> ins_sort_aux [first] rest

let test4 = ins_sort [3; 5; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test5 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
let test6 = ins_sort [] = []
let test6 = ins_sort [2] = [2]
