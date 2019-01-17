(* 目的:与えられた体重と身長からBMI指数を算出する *)
(* bmi: float -> float -> float *)
let bmi height weight = 
    weight /. (height ** 2.0)

(* テスト *)
let test1 = bmi 0.08 64.0 = 10000.0

(* 目的:与えられたBMI指数から肥満度を出力する *)
(* taikei: float -> float -> string *)
let taikei height weight =
    if bmi height weight >= 30.0 then "高度肥満"
    else if bmi height weight >= 25.0 then "肥満"
    else if bmi height weight >= 18.5 then "標準" else "やせ"

(* テスト *)
let test2 = taikei 1.0 30.0 = "高度肥満"
let test3 = taikei 1.0 29.0 = "肥満"
let test4 = taikei 1.0 25.0 = "肥満"
let test5 = taikei 1.0 24.9 = "標準"
let test6 = taikei 1.0 18.5 = "標準"
let test7 = taikei 1.0 18.4 = "やせ"