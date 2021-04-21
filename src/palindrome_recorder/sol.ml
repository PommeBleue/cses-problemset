(* Taking inputs *)
let str = read_line ();;

(* Utility functions *)
let rec isin e = function
    | [] -> false
    | t::q when t = e -> true
    | _::q -> isin e q;;

(* Special Types *)
type tree = Null | Node of char * int * tree;;

let rec get_keys = function
    | Null -> []
    | Node(k, _, node) -> k::(get_keys node);;

let set key e tree =
    let keys = get_keys tree in
    if isin key keys then
    begin
        let rec change = function
            | Null -> Null
            | Node(k, i, node) when k = key -> Node(k, e, node)
            | Node(k, i, node) -> Node(k, i, change node)
        in change tree
    end else
    begin
        let rec change = function
            | Null -> Node(key, e, Null)
            | Node(k, i, node) -> Node(k, i, change node)
        in change tree
    end;;


let rec get key = function
    | Null -> 0
    | Node(k, e, _) when k = key -> e
    | Node(_, _, node) -> get key node;;

let rec count_odds = function
    | Null -> 0
    | Node(_, e, node) when (e mod 2) = 1 -> 1 + count_odds node
    | Node(_, _, node) -> count_odds node;;


let rec the_odd_one = function
    | Null -> raise Not_found
    | Node(k, e, _) when e mod 2 = 1 -> k
    | Node(_, _, node) -> the_odd_one node;;


(* Defining functions *)
let palindrome str =
    let rec verdict result = function
        | Null -> result
        | tree when (count_odds tree) > 1 -> "NO SOLUTION"
        | tree when (count_odds tree) = 1 ->  let co = (the_odd_one tree) in verdict (String.make 1 co) (set co ((get co tree) - 1) tree)
        | Node(k, e, node) -> let t = (String.make (e/2) k) in verdict (t^result^t) node
    and n = String.length str and letters = ref Null in
    for i = 0 to (n - 1) do let c = str.[i] in
        letters := set c ((get c !letters) + 1) !letters
    done; verdict "" !letters;;


 (* Executing functions *)
 print_string (palindrome str); print_string "\n";;