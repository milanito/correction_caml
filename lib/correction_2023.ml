  let rec is_image f lst1 lst2 = match lst1, lst2 with
    [], [] -> true
    | _, [] | [], _ -> failwith "Lists are not equal"
    | a1 :: q1, a2 :: q2 -> (f a1) = a2 && (is_image f q1 q2) ;;

  let rec how_many f lst = match lst with
    [] -> 0
    | a :: q -> (if (f a) then 1 else 0) + (how_many f q) ;;

  let count_multiples n lst = how_many (fun x -> x mod n = 0) lst ;;

  let insert_nth x i lst =
    if i <= 0 then
      invalid_arg "i is below 1"
    else
      let rec insert_rec idx l = match l with
        [] -> failwith "list is too short"
        | a :: q -> if idx = i then (x :: a :: q) else (a :: (insert_rec (idx + 1) q))
      in insert_rec 1 lst ;;
