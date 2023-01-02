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

(* 目的: person_tのソート済みリストとperson_tの要素を渡すと名前の昇順でソートして返す *)
(* insert : person_t -> person_t list -> person_t list *)
let rec insert person lst = match lst with
  [] -> person :: []
  | ({name = first_name;
      height = first_height;
      weight = first_weight;
      birthday = first_birthday;
      blood_type = first_blood_type} as first) :: rest ->
    match person with
      {name = name;
       height = height;
       weight = weight;
       birthday = birthday;
       blood_type = blood_type} ->
        if name <= first_name
        then person :: first :: rest
        else first :: insert person rest

let test1 = insert person1 [] = [person1]
let test2 = insert person1 [person2] = [person1; person2]
let test3 = insert person2 [person2; person3] = [person2; person2; person3]

(* 目的: person_tのリストを渡すと名前の昇順でソートして返す *)
(* person_sort_aux : person_t list -> person_t list -> person_t list *)
let rec person_sort_aux sorted lst = match lst with
  [] -> sorted
  | first :: rest -> person_sort_aux (insert first sorted) rest

let test4 = person_sort_aux [] [] = []
let test5 = person_sort_aux [person1] [] = [person1]
let test6 = person_sort_aux [person2] [person1] = [person1; person2]
let test7 = person_sort_aux [person1; person3] [person2] = [person1; person2; person3]

(* 目的: person_tのリストを渡すと名前の昇順でソートして返す *)
(* person_sort : person_t list -> person_t list *)
let person_sort lst = match lst with
  [] -> []
  | first :: rest -> person_sort_aux [first] rest

let test8 = person_sort [] = []
let test9 = person_sort [person1] = [person1]
let test10 = person_sort [person2; person1] = [person1; person2]
let test11 = person_sort [person1; person3; person2] = [person1; person2; person3]
