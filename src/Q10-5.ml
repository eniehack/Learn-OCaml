type gakusei_t = {
    name : string;
    point : int;
    score : string;
}

let gakusei1 = {name = "asai"; point = 70; score = "B"}
let gakusei2 = {name = "yoshida"; point = 85; score = "A"}
let gakusei3 = {name = "kaneko"; point = 80; score = "A"}

(* 目的: 渡されたgakusei_t listの内、最小の要素を返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
  [] -> {name = "?"; point = min_int; score = "?"}
  | first :: rest ->
    let max = gakusei_max rest in
      if first.point <= max.point
      then max
      else first

let test2 = gakusei_max [gakusei1] = gakusei1
let test3 = gakusei_max [gakusei2; gakusei3] = gakusei2
