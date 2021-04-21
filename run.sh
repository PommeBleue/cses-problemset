#! /bin/bash
BASE="$HOME/IdeaProjects/cses-problemset/src"
if [ $# == 1 ]
then
  PROB=$1
  ocamlc -o sol "$BASE/$PROB/sol.ml"
  ocamlrun sol

  rm -f "$BASE/$PROB/sol"
  rm -f "$BASE/$PROB/sol.cmi"
  rm -f "$BASE/$PROB/sol.cmo"
else
  echo "Not enough or too many arguments."
fi