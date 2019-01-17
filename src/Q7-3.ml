(* 目的:平面座標を受け取ったらx軸について対照な座標を返す *)
(* taisho_x: float * float -> float * float *)
let taisho_x zahyo = match zahyo with
    (x, y) -> (x, -. y)

(* テスト *)
let test1 = taisho_x (1., 1.) = (1., -1.)