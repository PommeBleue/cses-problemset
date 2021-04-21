(* Modules *)
open Int;;

(* Taking inputs *)
let n = read_int ();;
let ps = let result = ref []
    in for i = 1 to n do
        result := (read_int ())::(!result)
    done; !result;;

(* Utility functions *)
let rec get n = function
    | [] -> raise Not_found
    | t::q when n = 0 -> t
    | _::q -> get (n - 1) q;;

(* Défining functions *)
let minimum n = let result = ref (int_of_float 1e+18)
    in for i = 0 to (shift_left 1 n) do
        let s1 = ref 0 and s2 = ref 0
        in for j = 0 to (n - 1) do
            if (logand i j) = 0 then
                s1 := (get j ps) + !s1
            else begin
                s2 := (get j ps) + !s2
            end;
            result := min (!result) (abs (!s1 - !s2))
        done;
    done; !result;;

(* Executing functions *)
print_int (minimum n); print_string "\n";;