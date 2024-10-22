open Correction ;;

let () = Printf.printf "%B\n" (Correction_2023.is_image (fun x -> x * 2) [1;2;3;4;5] [2;4;6;8;10])
let () = Printf.printf "%B\n" (Correction_2023.is_image (fun x -> string_of_int x) [1;2;3;4;5] ["2";"4";"6";"8";"0"])
let () = Printf.printf "%d\n" (Correction_2023.how_many (fun x -> x = 2) [1;2;3;4])
let () = Printf.printf "%d\n" (Correction_2023.count_multiples 2 [1;2;3;4])
let () = Common.print_int_list (Correction_2023.insert_nth 0 2 [1;2;3;4])
