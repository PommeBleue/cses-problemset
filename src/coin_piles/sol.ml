(* Taking input *)
let t = read_int ();;
let couples =
    let rec rev = List.fold_left (fun a b -> b::a) []
    and result = ref [] in
    for i = 1 to t do
        result := (read_int (), read_int ())::!result
    done; rev !result;;

(* Defining functions *)
let possible a b =
    let i = ((2*b-a)/3) and j = ((2*a-b)/3)
    and p i j =  ((i+2*j) = a) && ((j+2*i) = b)
    and print = function
        | false -> print_string "NO\n"
        | _ -> print_string "YES\n"
    in print (p i j);;


(* Executing functions *)
let rec launch = function
    | [] -> ()
    | t::q -> possible (fst t) (snd t); launch q
in launch couples;