open Correction ;;

let () = Common.print_int_list (Correction_2025.delete 5 [1;2;3;4;5]);;
let () = Printf.printf "%B\n" (Correction_2025.search_both 5 1 [1;2;3;4;5]);;
let () = Printf.printf "%B\n" (Correction_2025.search_both 5 6 [1;2;3;4;5]);;
