(** assoc has been done in 2024 *)
(** forall2 has been done in 2024 *)

  let rec combfilter f lst1 lst2 = match lst1, lst2 with
    [], [] -> []
    | [], _ | _, [] -> failwith "list are not the same size"
    | a1 :: q1, a2 :: q2 -> if (f a1 a2) then ((a1, a2) :: combfilter f q1 q2) else combfilter f q1 q2 ;;

