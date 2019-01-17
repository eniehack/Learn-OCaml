(* 目的:与えられる5教科の点数の平均点と合計点を計算し組にして返す *)
(* goukei_to_heikin: int * int * int * int * int -> int * int *)
let goukei_to_heikin point = match point with
    (japanese, math, socialstudies, science, english)
        -> (japanese + math + socialstudies + science + english, (japanese + math + socialstudies + science + english) / 5 )

(* テスト *)
let test1 = goukei_to_heikin (50, 50, 50, 50, 50) = (250, 50)