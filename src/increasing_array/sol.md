# Increasing Array
## Énoncé
Étant donné une liste de `n` entiers. 
On veut modifier celle-ci de sorte que la liste devienne croissante,
i.e chaque élément est au moins aussi grand que le précédent.\

Pour ce faire, la seule action qu'on a le droit d'effectuer est : incrémenter un élément de la liste.
Notre tâche est de renvoyer le nombre minimum d'actions à faire pour transformer la liste donnée en une liste croissante.

## Solution
On parcourt la liste deux éléments par deux éléments. En `OCaml`, le motif
`x::y::q` nous permet de le faire facilement, en définissant une fonctions récursive. 
En python, ou en d'autres langages (C++ ou Java par exemple), on utilisera la syntaxe `for i in range(n-1)`, et dans ce cas 
`x` sera `li[i]`et `y` sera `li[i+1]` où `li`est la liste à transformer. 
Si `x > y`, on rajoute `x - y` au résultat, et on remplace `y` par `x` dans `li`.

 ## Résultats en console 
 En se positionnant dans le dossier `cses-problemset/`, on exécute ce qui suit :
 ```shell script
 $ ./run.command increasing_array
 5
 3
 2
 5
 1
 7
 1
 ```
 La dernière ligne représentant la réponse.\
 Des tests à plus grande échelle sont dans le fichier `outputs.txt`. Faire
 ```shell script
 $ cat ~/cses-problemset/src/increasing_array/outputs.txt
 ``` 