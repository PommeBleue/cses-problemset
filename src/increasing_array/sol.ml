(* Taking Input *)
let n = read_int ();;
let entiers =
    let result = ref []
    in for i = 1 to n do result := (!result)@[(read_int ())] done;
    !result;;


(* Defining functions *)
let rec minimum_moves = function
    | [] -> 0
    | x::y::z when x > y -> (x-y) + minimum_moves (x::z)
    | _::q -> minimum_moves q;;


(* Executing functions *)
print_int (minimum_moves entiers); print_string "\n";;