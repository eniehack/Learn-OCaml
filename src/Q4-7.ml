(* 目的:鶴と亀の足の数を与えられると足の数の合計を返す *)
(* tsurukame_no_ashi: Int-> Int -> Int *)
let tsurukame_no_ashi crane testudines = crane * 2 + testudines * 4

let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 2 2 = 12
let test3 = tsurukame_no_ashi 10 10 = 60