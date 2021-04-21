(* Taking input *)
let n = read_int ();;

(* Defining functions *)
let two_sets n =
    let rec print lst = match lst with
        | [] -> print_string "\n"
        | t::q -> print_int t; print_char ' '; print q
    and set1 = ref [] and set2 = ref [] and s = n*(n+1)/2 and k = n/4
    in if (s mod 2 = 1) then print_string "NO\n" else
    begin
        print_string "YES\n";
        if k = 0 then begin
            for i = 0 to (k - 1) do
                set1 := (4*i+1)::!set1;
                set1 := (4*i+4)::!set1;
                set2 := (4*i+2)::!set2;
                set2 := (4*i+3)::!set2
            done
        end else begin
            set1 := [1; 2] @ !set1;
            set2 := 3::!set2;
            for i = 0 to (k - 1) do
                set1 := (4*i+4)::!set1;
                set1 := (4*i+7)::!set1;
                set2 := (4*i+5)::!set2;
                set2 := (4*i+6)::!set2
            done;
        end
    end;
    print_int (List.length !set1);
    print_string "\n"; print !set1;
    print_int (List.length !set2);
    print_string "\n"; print !set2;;


(* Executing functions *)
two_sets n;;
