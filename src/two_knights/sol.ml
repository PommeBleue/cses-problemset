(* Taking inputs *)
let n = read_int ();;

(* Defining functions *)
let positions k =
    let m = k*k*(k*k - 1)/2
    in if k < 3 then m else m - 4*(k-1)*(k-2);;


(* Executing functions *)
for k = 1 to n do
    print_int (positions k); print_string "\n" done;;
