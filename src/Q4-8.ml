(* 目的:鶴と亀の数の合計と足の数を与えられると鶴の数を返す *)
(* tsurukame: int -> int -> int *)
let tsurukame kotai ashi = (4 * kotai - ashi) / 2

(* テスト *)
let test1 = tsurukame 8 24 = 4
let test2 = tsurukame 10 38 = 1