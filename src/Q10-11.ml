(* 目的: 漢字の駅名2つを繋ぐ路線を引数の駅間リストから探す *)
(* get_ekikan_kyori: str -> str -> ekikan_t list -> float *)
let rec get_ekikan_kyori dept arvl lst = match lst with
  [] -> infinity
  | first :: rest ->
    if (first.kiten = dept && first.shuten = arvl) || (first.kiten = arvl && first.shuten = dept)
    then first.kyori
    else get_ekikan_kyori dept arvl rest

let test1 = get_ekikan_kyori "茗荷谷" "代々木公園" global_ekikan_list = infinity
let test2 = get_ekikan_kyori "茗荷谷" "新大塚" global_ekikan_list = 1.2
