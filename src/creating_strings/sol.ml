(* Taking inputs *)
let str = read_line ();;

(* Utility functions *)
let rec every = function
    | [] -> true
    | (x, y)::q when y = 0 -> every q
    | _::q -> false;;


let rec set key e = function
    | [] -> [(key, e)]
    | t::q when (fst t) = key -> (key, e)::q
    | t::q -> t::(set key e q);;

let rec get key = function
    | [] -> 0
    | t::q when ((fst t) = key) -> snd t
    | _::q -> get key q;;

let rec loose key = function
    | [] -> []
    | (k, e)::q when key = k -> (k, (e - 1))::(loose key q)
    | t::q -> t::(loose key q);;

(* Parsing inputs *)
let parse str =
    let dict = ref [] in
    for i = 0 to (String.length str) - 1 do
        let key = str.[i] in dict := set key ((get key !dict) + 1) !dict
    done; !dict;;

(* Defining functions *)
let create str =
    let rec permute prev = function
        | [] when (every prev) -> [""]
        | [] -> []
        | (c, k)::q when k > 0 -> let sc = (String.make 1 c) in (List.map (function a -> sc^a) (permute (loose c prev) (loose c prev)))@(permute prev q)
        | _::q -> permute prev q
    in permute str str;;


(* Executing funcitons *)
let result = create (parse str);;
let show = print_int (List.length result);; print_string "\n"; List.fold_left (fun a b -> print_string b; print_string "\n") () result;;
