(* 目的: 駅名と駅のリストとを受け取り、駅リストに駅名が含まれていれば、漢字の駅名を返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *) 
let rec romaji_to_kanji str lst = match lst with
  [] -> ""
  | first :: rest ->
    if first.romaji = str
    then first.kanji
    else romaji_to_kanji str rest

let test1 = romaji_to_kanji "" global_ekimei_list = ""
let test2 = romaji_to_kanji "myogadani" global_ekimei_list = "茗荷谷"
