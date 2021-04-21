(* Taking Input *)
let n = read_int ();;
let entiers =
    let result = ref []
    in for i = 1 to (n-1) do result := (read_int ())::(!result) done;
    !result;;

(* Defining functions *)
let missing n l =
    let rec sum = function
        | [] -> failwith "No numbers missing for array of size 1."
        | [x] -> x
        | t::q -> t + (sum q)
    in (n*(n+1)/2) - (sum l);;

(* Executing function *)
print_int (missing n entiers);;
print_string "\n";;
