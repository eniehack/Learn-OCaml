(* 目的:平面座標を2つ受け取りその中点を返す *)
(* chuten: float*float -> float*float -> float*float *)
let chuten pair1 pair2 = match pair1 with
    (x1, y1) -> (match pair2 with
        (x2, y2) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)
    )

(* テスト *)
let test1 = chuten (0., 0.) (2., 2.) = (1., 1.)
let test2 = chuten (0., 0.) (-1., -1.) = (-0.5, -0.5)