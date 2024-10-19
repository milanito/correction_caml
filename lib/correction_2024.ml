  let rec insert x lst p = match lst with
    [] -> [x]
    | a :: q -> if (p x a) then x :: a :: q else a :: (insert x q p) ;;

  let insertion_sort f lst =
    let rec insertion_rec acc lst = match lst with
      [] -> acc
      | a :: q -> insertion_rec (insert a acc f) q
  in insertion_rec [] lst ;;

  let assoc k lst =
    if k <= 0 then
      invalid_arg "k is too low"
    else
      let rec assoc_rec l = match l with
        [] -> failwith "no value found"
        | (key, value) :: q -> if key = k then value else if key > k then failwith "no value found" else assoc_rec q
      in assoc_rec lst ;;

  let rec is_dominoes lst = match lst with
    [] | [_] -> true
    | (_,a) :: (b,c) :: q -> a = b && is_dominoes ((b,c) :: q) ;;

  let remove_nth i lst =
    if i <= 0 then
      invalid_arg "if you read this make a PR"
    else
    let rec rem_acc idx l = match l with
      [] -> failwith "list too short"
      | a :: q -> if idx == i then q else a :: (rem_acc (idx + 1) q)
      in rem_acc 1 lst ;;

  let rec forall2 p lst1 lst2 = match lst1, lst2 with
    [], [] -> true
    | _, [] | [], _ -> invalid_arg "lists have not the same size"
    | a :: q , b :: r -> (p a b) && (forall2 p q r ) ;;

  let almost = forall2 (fun x -> fun y -> x - y <= 1 && x - y >= -1)
