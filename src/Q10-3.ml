type gakusei_t = {
    name : string;
    point : int;
    score : string;
}

let gakusei1 = {name = "asai"; point = 70; score = "B"}
let gakusei2 = {name = "yoshida"; point = 85; score = "A"}
let gakusei3 = {name = "kaneko"; point = 80; score = "A"}

(* 目的: gakusei_tの要素を第2引数のリストへ成績の昇順になるようソートする *)
(* insert : gakusei_t -> gakusei_t list -> gakusei_t list *)
let rec insert gakusei lst = match lst with
    [] -> gakusei :: []
  | first :: rest ->
      if gakusei.point <= first.point
      then gakusei :: first :: rest
      else first :: (insert gakusei rest)

let test1 = insert gakusei1 [] = [gakusei1]
let test2 = insert gakusei1 [gakusei3; gakusei2;] = [gakusei1; gakusei3; gakusei2]
let test3 = insert gakusei2 [gakusei1; gakusei3] = [gakusei1; gakusei3; gakusei2]

(* 目的: ソートされていないリストの要素を1つずつ取り出し、ソート済みリストに挿入する *)
(* gakusei_sort_aux : gakusei_t list -> gakusei_t list -> gakusei_t list *)
let rec gakusei_sort_aux sorted lst = match lst with
  [] -> sorted
  | first :: rest -> gakusei_sort_aux (insert first sorted) rest

let test4 = gakusei_sort_aux [] [] = []
let test5 = gakusei_sort_aux [gakusei2] [] = [gakusei2]
let test6 = gakusei_sort_aux [] [gakusei2] = [gakusei2]
let test7 = gakusei_sort_aux [] [gakusei2; gakusei1; gakusei3] = [gakusei1; gakusei3; gakusei2]

(* 目的: gakusei_tのリストを成績の昇順にソートする *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> gakusei_sort_aux [first] rest

let test8 = gakusei_sort [] = []
let test9 = gakusei_sort [gakusei2] = [gakusei2]
let test10 = gakusei_sort [gakusei2; gakusei1; gakusei3] = [gakusei1; gakusei3; gakusei2]
