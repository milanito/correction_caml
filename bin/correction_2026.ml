open Correction ;;

let () = Common.print_int_list (Correction_2026.remove_interval [5;5;2;3;5;1;3;4;5;1;67;5;4] 3 6);;
let () = Common.print_int_list (Correction_2026.alternate_list [5;5;2;3;5;1;3;4;5;1;67;5;4] [3; 6]);;
let () = Common.print_int_list (Correction_2026.alternate_list [3; 6] [5;5;2;3;5;1;3;4;5;1;67;5;4]);;
