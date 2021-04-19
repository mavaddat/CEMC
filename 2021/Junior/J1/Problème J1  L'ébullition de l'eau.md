# Problème J1 : L'ébullition de l'eau

## Énoncé du problème

Au niveau de la mer, la pression atmosphérique est de 100kPa et l'eau
commence à bouillir à 100℃. Au fur et à mesure que l'on monte en
altitude, la pression atmosphérique diminue et l'eau bout à des
températures plus basses. Au fur et à mesure que l'on descend sous le
niveau de la mer, la pression atmosphérique augmente et l'eau bout à des
températures plus élevées. La formule suivante relie la pression
atmosphérique au point d'ébullition de l'eau :

> *P* = 5 ×*B*− 400

*P* étant la pression atmosphérique en kPa et *B* étant la température
en ℃ à laquelle l'eau commence à bouillir.

Étant donné la température à laquelle l'eau commence a bouillir,
déterminer la pression atmosphérique. Déterminer également si l'on est
situé en dessous du niveau de la mer, au niveau de la mer ou au-dessus
du niveau de la mer.

*Remarquons que les informations scientifiques présentées sont en
général correctes mais que les valeurs de* 100*℃ et* 100*kPa sont
approximatives. De plus, la formule présentée est une simplification de
la relation exacte qui existe entre le point d'ébullition de l'eau et la
pression atmosphérique.*

### Précisions par rapport aux données d'entrée

Les données d'entrée ne contiennent qu'une seule ligne. Cette ligne ne
contient qu'un seul entier, *B*, tel que *B*≥ 80 et *B*≤ 200. Cet entier
représente la température en ℃ à laquelle l'eau commence à bouillir.

### Précisions par rapport aux données de sortie

Les données de sortie ne devraient contenir que deux lignes. La première
ligne doit contenir un entier représentant la pression atmosphérique en
kPa. La seconde ligne doit contenir l'un des entiers -1, 0 ou 1. Les
entiers -1, 0 et 1 indiquent respectivement que l'on est situé en
dessous du niveau de la mer, au niveau de la mer ou au-dessus du niveau
de la mer.

### Données d'entrée d'un 1ᵉʳ exemple

```
99
```

### Données de sortie du 1ᵉʳ exemple

```
95
1
```

### Justification des données de sortie du 1ᵉʳ exemple

On pose *B* = 99 dans la formule pour obtenir *P* = 5 × 99 − 400, soit
95. Puisque 95kPa est inférieur à 100kPa, alors on est situé au-dessus
du niveau de la mer.

### Données d'entrée d'un 2ᵉ exemple

```
102
```

### Données de sortie du 2ᵉ exemple

```
110
-1
```

### Justification des données de sortie du 2ᵉ exemple

On pose *B* = 102 dans la formule pour obtenir *P* = 5×102−400, soit
110. Puisque 110kPa est supérieur à 100kPa, alors on est situé en
dessous du niveau de la mer.

