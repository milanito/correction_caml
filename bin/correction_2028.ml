open Correction ;;

let () = Common.print_int_list (Correction_2028.remove_x 1 []);;
let () = Common.print_str_list (Correction_2028.remove_x "apple" ["banana";"apple";"cherry";"date";"apple"]);;
let () = Common.print_int_list (Correction_2028.remove_x 5 [5;5;2;3;5;1]);;

let () = Common.print_int_list (Correction_2028.remove_duplicates [3;1;2;2;3;1;4;5;5])

let () = Common.print_char_list_list (Correction_2028.split (function x -> x = ',') []) ;;
let () = Common.print_int_list_list (Correction_2028.split (function x -> x = 3) [1;2;3;4;5]) ;;
let () = Common.print_int_list_list (Correction_2028.split (function x -> x = 20) [10;20;30;40;50]) ;;
let () = Common.print_int_list_list (Correction_2028.split (function x -> x = 0) [0;1;0;2;0;3;0;4]) ;;
