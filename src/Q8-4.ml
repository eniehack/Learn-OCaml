type ekimei_t = {
    kanji : string;
    kana : string;
    romaji : string;
    shozoku : string;
}

(* 目的:ekimei_t型のデータを受けとり、「路線名、駅名(かな)」の形式で文字列を返す *)
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
    {kanji=kanji; kana=kana; romaji=romaji; shozoku=shozoku}
    -> shozoku ^ ", " ^ kanji ^ " (" ^ kana ^ ") "

(* テスト *)
let test1 = hyoji {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸の内線"}
    = "丸の内線, 茗荷谷 (みょうがだに) "