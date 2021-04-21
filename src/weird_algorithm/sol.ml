(* Taking input *)
let n = read_int ();;

(* Defining functions *)
let rec wa = function
    | 1 -> print_int 1; 1
    | n when n mod 2 = 0 -> print_int n; print_char ' '; (wa (n/2))
    | n -> print_int n; print_char ' '; (wa (n*3 + 1));;


(* Executing function *)
wa n;;
print_string "\n";;