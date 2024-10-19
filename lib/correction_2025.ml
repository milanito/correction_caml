  let rec delete x lst = match lst with
    [] -> []
    | a :: q -> if a > x then a::q
                else if a = x then q
      else a::(delete x q) ;;

    let rec search x lst = match lst with
    [] -> false
    | a :: q -> a = x || search x q ;;

    let search_both a b lst = (search a lst) && (search b lst)
