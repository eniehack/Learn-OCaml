type person_t = {
    name : string;
    height : float;
    weight : float;
    birthday : string;
    blood_type : string;
}

let list1 = [{name="A"; height=150.0; weight=60.0; birthday="1/1"; blood_type="B"}]
let list2 = [{name="B"; height=170.0; weight=50.0; birthday="12/31"; blood_type="O"}; {name="C"; height=180.0; weight=65.0; birthday="6/1"; blood_type="A"}]

(* 目的:person_t型のデータを受け取ったら血液型がAの人の数を返す *)
(* count_ketsueki_A: person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    |   {name=name; height=height; weight=weight; birthday=birthday; blood_type=blood_type} :: rest
        -> if blood_type = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest

(* テスト *)
let test1 = count_ketsueki_A [] = 0
let test2 = count_ketsueki_A list1 = 0
let test3 = count_ketsueki_A list2 = 1