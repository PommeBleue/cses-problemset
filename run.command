DIR=${1?Error: no input directory given}
cd src/$DIR
ocamlc -o sol sol.ml
ocamlrun sol

rm -f sol
rm -f sol.cmi
rm -f sol.cmo