  let remove_interval lst i j =
    if i <= 0 || j <= 0 || j <= i then
      invalid_arg "invalid ranks"
    else
    let rec rem_int_rec rk l = match l with
      [] -> if rk < j then
              failwith "List too short"
            else
              []
      | a::q -> if i <= rk && rk <= j then
                  rem_int_rec (rk + 1) q
                else
                  a::(rem_int_rec (rk + 1) q)
      in rem_int_rec 1 lst ;;

  let reverse l =
    let rec reverse_rec acc lst = match lst with
      [] -> acc
      | a::q -> reverse_rec (a::acc) q
    in reverse_rec [] l ;;

  let alternate_list lst1 lst2 =
    let rec alt_rec acc l1 l2 = match l1, l2 with
      ([], []) | (_, []) -> reverse acc
      | ([], a::q) -> alt_rec (a::acc) l1 q
      | (a1::q1, a2::q2) -> alt_rec (a1::a2::acc) q1 q2
    in alt_rec [] lst1 lst2 ;;
