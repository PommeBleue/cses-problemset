# Repetitions
## Énoncé 
Étant donné une chaîne de caractères représentant une séquence d'ADN, i.e une chaîne 
composée des caractères `'A'`, `'C'`, `'G'` et `'T'`.
Notre tâche est de renvoyer la taille de la plus longue sous-chaîne constituée d'un seul des quatre caractères.

## Solution
L'idée de cette solution est de définir deux variables, `k` qui représente un maximum local et `m`, le maximum global. 
On parcourt la chaîne, et à chaque qu'on trouve une nouvelle sous-chaîne constituée d'un seul caractère, on affecte `1` à `k`, 
sinon on incrémente `k` et on affecte `max{k, m}` à `m`.

## Résultats en console 
En se positionnant dans le dossier `cses-problemset/`, on exécute ce qui suit :
```shell script
$ ./run.sh repetitions
ATTCGGGA
3
```
La dernière ligne représentant la taille de la plus longue sous-chaîne.\
Des tests à plus grande échelle sont dans le fichier `outputs.txt`. Faire
```shell script
$ cat ~/cses-problemset/src/repetitions/outputs.txt
```