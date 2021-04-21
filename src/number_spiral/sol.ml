(* Taking inputs *)
let n = read_int ();;
let couples =
    let result = ref [] in
    for i = 1 to n do result := !result@[(read_int (), read_int ())] done; !result;;


(* Definition funcitons *)
let number_spiral y x =
    let sign m = match m mod 2 with
        0 -> 1
        | _ -> -1
    and m = max y x in 1 + m*(m-1) + (sign m)*(y-x);;


(* Executing functions *)
let rec show = function
    | [] -> ()
    | t::q -> print_int (number_spiral (fst t) (snd t)); print_string "\n"; show q
    in show couples;;