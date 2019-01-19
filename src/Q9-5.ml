(* 目的:整数のリストを受け取ったら偶数の要素のみのリストを返す *)
(* even:int list->int list *)
let rec even lst = match lst with
    [] -> []
    |   first :: rest -> if first mod 2 = 0 then first :: even rest 
                                            else even rest

(* テスト *)
let test1 = even [] = []
let test2 = even [0; 1; 2; 3; 4; 5; 6;] = [0; 2; 4; 6;]
let test3 = even [9; 4; 6; 8; 2; 1;] = [4; 6; 8; 2;]
let test3 = even [1; 3; 5;] = []