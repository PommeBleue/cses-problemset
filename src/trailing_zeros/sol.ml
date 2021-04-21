(* Taking input *)
let n = read_int ();;


(* Defining functions *)
let trailing n =
    let rec count i = function
        | n when i > n -> 0
        | n -> (n/i) + count (i*5) n
    in count 5 n;;


(* Executing functions *)
print_int (trailing n); print_string "\n";;