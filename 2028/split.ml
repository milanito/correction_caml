(* Helper function. *)
let print_list to_string l =
    let rec loop rem acc =
        match rem with
        | [] -> acc
        | [s] -> acc ^ (to_string s)
        | (s::ss) ->
            loop ss (acc ^ (to_string s) ^ "; ") in
    print_string "[";
    print_string (loop l "");
    print_endline "]"

let print_str_list = print_list (fun s -> "\"" ^ s ^ "\"")
let print_char_list = print_list (fun c -> "'" ^ String.make 1 c ^ "'")
let print_int_list = print_list string_of_int
let print_float_list = print_list string_of_float
let print_char_list_list  = List.iter (print_char_list)
let print_int_list_list  = List.iter (print_int_list)

(** correction *)

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


let () = print_char_list_list (split (function x -> x = ',') []) ;;
let () = print_int_list_list (split (function x -> x = 3) [1;2;3;4;5]) ;;
let () = print_int_list_list (split (function x -> x = 20) [10;20;30;40;50]) ;;
let () = print_int_list_list (split (function x -> x = 0) [0;1;0;2;0;3;0;4]) ;;
