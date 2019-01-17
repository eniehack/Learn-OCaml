(* 目的:名前nameと成績hyoukaの組を受け取ると「nameさんの評価はhyoukaです」と返す *)
(* seiseki: string * string -> string *)
let seiseki pair = match pair with
    (name, hyouka) -> name ^ "さんの評価は" ^ hyouka ^ "です"

(* テスト *)
let test1 = seiseki ("A", "B") = "Aさんの評価はBです"