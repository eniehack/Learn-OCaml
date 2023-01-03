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
let person4 = {name="D"; height=180.0; weight=65.0; birthday="6/1"; blood_type="AB"}


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

let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei [person1] = (0, 1, 0, 0)
let test3 = ketsueki_shukei [person3; person2] = (1, 0, 1, 0)
let test4 = ketsueki_shukei [person3; person2; person4] = (1, 0, 1, 1)
