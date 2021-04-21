#! /bin/bash
BASE="$HOME/IdeaProjects/cses-problemset/src"
DIRS=$(ls "$BASE")
for DIR in $DIRS; do
  if [ -e "$BASE/$DIR/sol.md" ]
  then
    mv "$BASE/$DIR/sol.md" "README.md"
  else
    echo "Nothing to do here."
  fi
  cd ..
done
