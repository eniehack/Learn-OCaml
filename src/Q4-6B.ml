(* 目的:亀の数 y を与えられたら足の本数を返す関数 *)
(* kame_no_ashi: Int -> Int *)
let kame_no_ashi y = y * 4

let test1 = kame_no_ashi 1 = 4
let test2 = kame_no_ashi 10 = 40
let test3 = kame_no_ashi 5 = 20