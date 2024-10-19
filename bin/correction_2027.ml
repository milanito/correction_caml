open Correction ;;

  let () = Common.print_int_list (Correction_2027.insert_post 7 (function x -> x = 3) [1;2;3;4;5]) ;;
  let () = Printf.printf "%d\n" (Correction_2027.pos_max [1;2;3;4;5]) ;;
  let () = Printf.printf "%d\n" (Correction_2027.pos_max [1;2;8;4;5]) ;;
  let () = Printf.printf "%B\n" (Correction_2027.less2 (fun x -> fun y -> (x + y) < 4) 3 [1;2;8;4;5] [1;2;8;4;5]) ;;
  let () = Printf.printf "%B\n" (Correction_2027.less2 (fun x -> fun y -> (x + y) > 4) 2 [1;2;8;4;5] [1;2;8;4;5]) ;;
  let () = Printf.printf "%B\n" (Correction_2027.common 2 [1;2;8;4;5] [1;2;8;4;5]) ;;
  let () = Printf.printf "%B\n" (Correction_2027.common 2 [1;2;8;4;5] [4;5;7;3;2]) ;;
