(* 目的:時間xを受け取ったら午前か午後かを判定する関数 *)
(* jikoku: Int -> string *)
let jikoku x = if x >= 12 then "午後" else "午前"

(* テスト *)
let test1 = jikoku 1 = "午前"
let test2 = jikoku 12 = "午後"
let test3 = jikoku 13 = "午後"