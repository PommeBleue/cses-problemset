# 1 - Weird Algorithm
## Énoncé 
Notre tâche est d'implémenter l'algorithme suivant :

Il prendra en entrée un entier `n`. Il exécutera de manière récursive
les instructions suivantes, jusqu'à ce que le résultat soit 1 :

- Si `n` est pair, `n/2` sera renvoyé.
- Sinon, `n*3 + 1` sera renvoyé.

**Exemple :**

![alt text](./img/sequence.png "Title")

## Solution
Ce premier problème étant très facile (simple implémentation en un langage de programamtion), cette section est laissée
telle quelle.

## Résultats en console 
En se positionnant dans le dossier `cses-problemset/`, on exécute ce qui suit :
```shell script
$ ./run.sh weird_algorithm
3
3 10 5 16 8 4 2 1
```
Des tests à plus grande échelle sont dans le fichier `outputs.txt`. Faire
```shell script
$ cat ~/cses-problemset/src/weird_algorithm/outputs.txt
```