(* Taking input *)
let string = read_line ();;


(* Defining functions *)
let max_length str =
    let c = ref 'A' and k = ref 0 and m = ref 0 in
        for i = 0 to (String.length str - 1) do
            if str.[i] = !c then begin k := !k + 1; m := (max !m !k) end else begin c := str.[i]; k := 1 end
        done;
    !m;;

(* Executing functions *)
print_int (max_length string); print_string "\n";;
