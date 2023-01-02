(* あらかじめ昇順に並んでいる整数のリストlstと整数nを受け取ったら、昇順になるようにlstにnを挿入する *)
(* insert int list -> int -> int list *)
let rec insert lst n = match lst with
    [] -> n :: []
    |    first :: rest ->
            if first >= n
            then n :: first :: rest
            else first :: insert rest n

(* テスト *)
let test1 = insert [] 0 = [0]
let test2 = insert [1; 2; 4;] 3 = [1; 2; 3; 4;]
