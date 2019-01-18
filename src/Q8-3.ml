type person_t = {
    name : string;
    height : float;
    weight : float;
    birthday : string;
    blood_type : string;
}

let person1 = {name="A"; height=150.0; weight=60.0; birthday="1/1"; blood_type="B"}
let person2 = {name="B"; height=170.0; weight=50.0; birthday="12/31"; blood_type="O"}
let person3 = {name="C"; height=180.0; weight=65.0; birthday="6/1"; blood_type="A"}

(* 目的:person_t型のデータを受け取ったら「Yさんの血液型はX型です」と返す *)
(* ketsueki_hyouji: person_t->string *)
let ketsueki_hyouji person = match person with
    {name=name; height=height; weight=weight; birthday=birthday; blood_type=blood_type} ->
        name ^ "さんの血液型は" ^ blood_type ^ "型です"

(* テスト *)
let test1 = ketsueki_hyouji person1 = "Aさんの血液型はB型です"
let test2 = ketsueki_hyouji person2 = "Bさんの血液型はO型です"
let test3 = ketsueki_hyouji person3 = "Cさんの血液型はA型です"