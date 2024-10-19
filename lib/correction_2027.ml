  let rec insert_post x f lst = match lst with
    [] -> failwith "element cannot by inserted"
    | a::q -> if (f a) then a::x::q else a::(insert_post x f q) ;;

  let pos_max lst = match lst with
    [] -> invalid_arg "list is empty"
    | a::q -> let rec vmax max p_max idx l = match l with
      [] -> p_max
    | e::r -> if e > max then vmax e idx (idx + 1) r else vmax max p_max (idx + 1) r
      in vmax a 1 2 q ;;

  let less2 p k l1 l2 =
    if k <= 0 then
      invalid_arg "k is lower than 0"
    else
      let rec less_rec acc lst1 lst2 = match lst1, lst2 with
      ([],[]) | ([],_) | (_,[]) -> true
        | (a1::q1, a2::q2) -> if (p a1 a2) then
                                acc <> (k - 1) && less_rec (acc + 1) q1 q2
                              else
                                less_rec acc q1 q2
    in less_rec 0 l1 l2 ;;

  let common k l1 l2 = not (less2 (=) (k + 1) l1 l2) ;;
