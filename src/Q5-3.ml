(* 目的:誕生日を渡すと星座を返す関数 *)
(* seiza: Int->Int->String *)
let seiza month day = 
    if month = 1 then 
        if day >= 20 then "みずがめ" else "やぎ"
    else if month = 2 then
        if day >= 19 then "うお" else "みずがめ"
    else if month = 3 then
        if day >= 21 then "おひつじ" else "うお"
    else if month = 4 then
        if day >= 20 then "おうし" else "おひつじ"
    else if month = 5 then
        if day >= 21 then "ふたご" else "おうし"
    else if month = 6 then
        if day >= 22 then "かに" else "ふたご"
    else if month = 7 then
        if day >= 23 then "しし" else "かに"
    else if month = 8 then
        if day >= 23 then "おとめ" else "しし"
    else if month = 9 then
        if day >= 23 then "てんびん" else "おとめ"
    else if month = 10 then
        if day >= 24 then "さそり" else "てんびん"
    else if month = 11 then
        if day >= 23 then "いて" else "さそり"
    else
        if day >= 22 then "やぎ" else "いて"

(* テスト *)
let test0 = seiza 1 19 = "やぎ"
let test1 = seiza 1 20 = "みずがめ"
let test2 = seiza 2 18 = "みずがめ"
let test3 = seiza 2 19 = "うお"
let test4 = seiza 3 20 = "うお"
let test5 = seiza 3 21 = "おひつじ"
let test6 = seiza 4 19 = "おひつじ"
let test7 = seiza 4 20 = "おうし"
let test8 = seiza 5 20 = "おうし"
let test9 = seiza 5 21 = "ふたご"
let test10 = seiza 6 21 = "ふたご"
let test11 = seiza 6 22 = "かに"
let test12 = seiza 7 22 = "かに"
let test13 = seiza 7 23 = "しし"
let test14 = seiza 8 22 = "しし"
let test15 = seiza 8 23 = "おとめ"
let test16 = seiza 9 22 = "おとめ"
let test17 = seiza 9 23 = "てんびん"
let test18 = seiza 10 23 = "てんびん"
let test19 = seiza 10 24 = "さそり"
let test20 = seiza 11 22 = "さそり"
let test21 = seiza 11 23 = "いて"
let test22 = seiza 12 21 = "いて"
let test23 = seiza 12 22 = "やぎ"