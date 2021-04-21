(* Taking inputs *)
let n = read_int ();;

(* Defining functions *)
let grays n =
    let rec construct = function
    | 1 -> ["0"; "1"]
    | n -> (List.map (function a -> "0"^a) (construct (n - 1)))@(List.map (function a -> "1"^a) (construct (n - 1)))
    in List.fold_left (fun a b -> print_string b; print_string "\n") () (construct n);;


(* Executing functions *)
grays n;;