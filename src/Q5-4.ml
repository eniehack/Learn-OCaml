(* 目的:2次方程式の係数3つを与えられたら判別式の解を返す *)
(* hanbetsushiki: Int->Int->Int->Int *)
let hanbetsushiki a b c = b * b - 4 * a * c

(* テスト *)
let test1 = hanbetsushiki 1 2 1 = 0
let test2 = hanbetsushiki 1 4 1 = 12
let test3 = hanbetsushiki 2 2 1 = -4

(* 目的:二次方程式の解の判別式の解を与えられたらその二次方程式の解の個数を返す *)
(* kai_no_kosuu: int -> int -> int -> int *)
let kai_no_kosuu a b c =
    if hanbetsushiki a b c = 0 then 1 else 2

(* テスト *)
let test4 = kai_no_kosuu 1 2 1 = 1
let test5 = kai_no_kosuu 1 4 1 = 2
let test6 = kai_no_kosuu 2 2 1 = 2

(* 目的:二次方程式の解の判別式の解からその二次方程式が虚数解を持つのかを判定する *)
(* kyosuukai: int -> int -> int -> string *)
let kyosuukai a b c = 
    if hanbetsushiki a b c < 0 then "True" else "False"

(* テスト *)
let test7 = kyosuukai 1 2 1 = "False"
let test8 = kyosuukai 1 4 1 = "False"
let test9 = kyosuukai 2 2 1 = "True"