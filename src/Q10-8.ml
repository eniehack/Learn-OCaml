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
let person4 = {name="D"; height=180.0; weight=65.0; birthday="6/1"; blood_type="A"}

(* 目的: person_tのリストを受けとり、それぞれの血液型の人数を数える *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | first :: rest ->
    let (a, b, o, ab) = ketsueki_shukei rest in
    if first.blood_type = "A" then (a+1, b, o, ab)
    else if first.blood_type = "B" then (a, b+1, o, ab)
    else if first.blood_type = "O" then (a, b, o+1, ab)
    else (a, b, o, ab+1)

(* 目的: 渡されたリストのperson_tから最多な血液型を返す *)
(* saita_ketsueki : person_t list -> string *)
let saita_ketsueki lst =
  let (a, b, o, ab) = ketsueki_shukei lst in
    if b < a && o < a && ab < a then "A"
    else if a < b && o < b && ab < b then "B"
    else if a < o && b < o && ab < o then "O"
    else if a < ab && b < ab && o < ab then "AB"
    else ""

let test1 = saita_ketsueki [] = ""
let test2 = saita_ketsueki [person1] = "B"
let test4 = saita_ketsueki [person3; person2; person4] = "A"
