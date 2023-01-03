let rec romaji_to_kanji str lst = match lst with
  [] -> ""
  | first :: rest ->
    if first.romaji = str
    then first.kanji
    else romaji_to_kanji str rest

let rec get_ekikan_kyori dept arvl lst = match lst with
  [] -> infinity
  | first :: rest ->
    if (first.kiten = dept && first.shuten = arvl) || (first.kiten = arvl && first.shuten = dept)
    then first.kyori
    else get_ekikan_kyori dept arvl rest

(* 目的: 2つのローマ字表記の駅名をとり、距離を調べる。直接繋がっている場合は距離を表示し、繋がっていない場合は繋がっていない旨を表示し、駅名がみつからなかった場合はその旨表示する *)
(* kyori_wo_hyouji: string -> string -> ekimei_t list -> ekikan_t list -> string *)
let kyori_wo_hyouji sta1 sta2 ekimei_lst ekikan_lst =
  match (romaji_to_kanji sta1 ekimei_lst, romaji_to_kanji sta2 ekimei_lst) with
    ("", "") -> sta1 ^ "という駅は存在しません"
    | (sta1_kanji, "") -> sta2 ^ "という駅は存在しません"
    | ("", sta2_kanji) -> sta1 ^ "という駅は存在しません"
    | (sta1_kanji, sta2_kanji) ->
      let dist = get_ekikan_kyori sta1_kanji sta2_kanji ekikan_lst in
      if dist = infinity
      then sta1_kanji ^ "駅と" ^ sta2_kanji ^ "駅は繋がっていません"
      else sta1_kanji ^ "駅から" ^ sta2_kanji ^ "駅までは" ^ (string_of_float dist) ^ "kmです"

let test1 = kyori_wo_hyouji "myogadani" "yoyogikouen" global_ekimei_list global_ekikan_list = "茗荷谷駅と代々木公園駅は繋がっていません"
let test2 = kyori_wo_hyouji "myogadani" "shinotsuka" global_ekimei_list global_ekikan_list = "茗荷谷駅から新大塚駅までは1.2kmです"
let test3 = kyori_wo_hyouji "myogatani" "shinotsuka" global_ekimei_list global_ekikan_list = "myogataniという駅は存在しません"
let test4 = kyori_wo_hyouji "myogadani" "shinotuka" global_ekimei_list global_ekikan_list = "shinotukaという駅は存在しません"
