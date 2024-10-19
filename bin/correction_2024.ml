open Correction ;;

let () = Common.print_int_list (Correction_2024.insert 12 [1;5;9;13;15;28] (fun x -> fun y -> x <= y));;
let () = Common.print_int_list (Correction_2024.insertion_sort (fun x -> fun y -> x >= y) [12;5;47;1;23;0;48;35;3;14;9;11;8;7;65]);;
let () = Printf.printf "%s\n" (Correction_2024.assoc 5 [(1, "one"); (2, "two"); (5, "five")])
let () = Printf.printf "%B\n" (Correction_2024.is_dominoes [(1, 2); (2, 3); (3, 6)])
let () = Printf.printf "%B\n" (Correction_2024.is_dominoes [(1, 2); (2, 3); (5, 6)])
let () = Common.print_int_list (Correction_2024.remove_nth 5 [12;5;47;1;23;0;48;35;3;14;9;11;8;7;65]);;
let () = Printf.printf "%B\n" (Correction_2024.almost [1;2;3;4;5] [1;2;3;4;6]);;
let () = Printf.printf "%B\n" (Correction_2024.almost [1;2;3;4;5] [1;2;3;4;7]);;
