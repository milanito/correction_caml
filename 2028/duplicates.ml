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

(** Correction *)
let rec remove_x x lst = match lst with
  [] -> []
  | a :: q -> if a = x then remove_x x q else a :: (remove_x x q) ;;

let rec remove_duplicates lst = match lst with
  [] -> []
  | a::q -> a::(remove_duplicates (remove_x a lst))

let () = print_int_list (remove_x 1 []);;
let () = print_str_list (remove_x "apple" ["banana";"apple";"cherry";"date";"apple"]);;
let () = print_int_list (remove_x 5 [5;5;2;3;5;1]);;

let () = print_int_list (remove_duplicates [3;1;2;2;3;1;4;5;5])
