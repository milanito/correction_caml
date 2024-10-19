let rec remove_x x lst = match lst with
  [] -> []
  | a :: q -> if a = x then remove_x x q else a :: (remove_x x q) ;;

let rec remove_duplicates lst = match lst with
  [] -> []
  | a::q -> a::(remove_duplicates (remove_x a q))

let reverse l = 
  let rec reverse_rec acc lst = match lst with
    [] -> acc
    | a::q -> reverse_rec (a::acc) q
  in reverse_rec [] l ;;

let rec split sep lst =
  if lst = []
    then []
    else
    let rec aux acc l = match l with
      [] -> [reverse acc]
      | a::q -> if sep a = true then (reverse acc) :: (split sep q)
                else aux (a :: acc) q
    in aux [] lst ;;

