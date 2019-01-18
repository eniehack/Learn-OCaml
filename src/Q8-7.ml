type ekitan_t = {
    kiten : string;
    shuten : string;
    keiyu : string;
    kyori : float; (* 単位:km *)
    jikan : int; (* 単位:分 *)
}

(* テスト *)
let test1 = {kiten="東京"; shuten="大手町"; keiyu="丸の内線"; kyori=0.6; jikan=0}