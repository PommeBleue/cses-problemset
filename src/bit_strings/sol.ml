(* Taking inputs *)
let n = read_int ();;

(* Funciton definitions *)
let nb_strings n =
    let rec calc s = function
        | 0 -> 1
        | n -> 2*(calc s (n-1)) mod s
    in calc (int_of_float (1e+9+.7.)) n;;


(* Executing functions *)
print_int (nb_strings n); print_string "\n";;