(* 目的:受け取ったリストの長さの返す *)
(* length: list -> int *)
let rec length lst = match lst with
    [] -> 0
    |   first :: rest -> 1 + length rest

(* テスト *)
let test1 = length [] = 0
let test2 = length [1; 2;] = 2
let test3 = length ["a";] = 1
let test4 = length [3.14;] = 1