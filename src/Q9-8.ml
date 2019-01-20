type person_t = {
    name : string;
    height : float;
    weight : float;
    birthmonth : int;
    birthday : int;
    blood_type : string;
}

let list1 = [{name="A"; height=150.0; weight=60.0; birthmonth=8; birthday=31; blood_type="B"}]
let list2 = [
    {name="B"; height=170.0; weight=50.0; birthmonth=12; birthday=31; blood_type="O"};
    {name="C"; height=180.0; weight=65.0; birthmonth=9; birthday=1; blood_type="A"}
    ]
let list3 = [
    {name="D"; height=170.0; weight=50.0; birthmonth=8; birthday=22; blood_type="O"};
    {name="E"; height=180.0; weight=65.0; birthmonth=8; birthday=23; blood_type="A"};
    {name="F"; height=180.0; weight=65.0; birthmonth=9; birthday=22; blood_type="A"};
    {name="G"; height=180.0; weight=65.0; birthmonth=9; birthday=23; blood_type="A"}
    ]


(* 目的:person_t型のデータを受けとったら乙女座の人の名前のみのリストを返す *)
(* otomeza:person_t list-> string list *)
let rec otomeza lst = match lst with
    [] -> []
    |   {name=name; height=height; weight=weight; birthmonth=birthmonth; birthday=birthday; blood_type=blood_type} :: rest 
    ->  if birthmonth = 8 
        then 
            if birthday >= 23
            then name :: otomeza rest
            else otomeza rest
        else
            if birthmonth = 9
            then
                if birthday <= 22
                then name :: otomeza rest
                else otomeza rest
            else otomeza rest

(* テスト *)
let test1 = otomeza [] = []
let test2 = otomeza list1 = ["A"]
let test3 = otomeza list2 = ["C"]
let test3 = otomeza list3 = ["E"; "F"]
