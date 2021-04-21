(* Taking input *)
let n = read_int ();;


(* Defining funcitons *)
let permutation_array n =
    if n = 2 || n = 3 then print_string "NO SOLUTION"
    else begin for i = 1 to n/2 do print_int (n/2 + i); print_string " "; print_int i; print_string " " done; if (n mod 2) = 1 then print_int n; end;;

(* Executing functions *)
permutation_array n; print_string "\n";;