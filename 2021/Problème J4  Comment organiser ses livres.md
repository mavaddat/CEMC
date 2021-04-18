# Problème J4 : Comment organiser ses livres

## Énoncé du problème

Valentina veut que les livres sur une étagère soient disposés d'une
certaine manière. Chaque fois qu'elle voit une étagère de livres, elle
réorganise les livres de manière que les grands livres soient situés à
gauche sur l'étagère, que les petits livres soient situés à droite sur
l'étagère et que les livres de taille moyenne soient situés entre les
deux. Elle accomplit cela en choisissant deux livres et en échangeant
leurs emplacements sur l'étagère. Elle répète cette manœuvre d'*échange*
jusqu'à atteindre la disposition souhaitée.

Votre tâche est d'aider Valentina à déterminer le nombre minimal
d'échanges nécessaires afin d'atteindre la disposition souhaitée des
livres.

### Précisions par rapport aux données d'entrée

Les données d'entrée consisteront exactement en une ligne contenant au
moins un caractère. Chacun des caractères dans la ligne sera soit L (un
grand livre), soit M (un livre de taille moyenne), soit S (un petit
livre).

Le tableau suivant indique la manière dont les 15 points disponibles
sont répartis.

  | Points pour la sortie correcte 	| Limites d'entrée à l'échelle     	| Type d'entrée à l'échelle                       	|
|--------------------------------	|----------------------------------	|-------------------------------------------------	|
|     7 points                   	|     au plus 1000 caractères      	|     chaque caractère sera un L ou un S          	|
|     2 points                   	|     au plus 500000 caractères    	|     chaque caractère sera un L ou un S          	|
|     4 points                   	|     au plus 1000 caractères      	|     chaque caractère sera un L, un M ou un S    	|
|     2 points                   	|     au plus 500000 caractères    	|     chaque caractère sera un L, un M ou un S    	|

### Précisions par rapport aux données de sortie

Les données de sortie ne devraient contenir qu'un seul entier, soit le
nombre minimal d'échanges nécessaires afin que toutes les occurrences de
L paraissent en premier, suivies de toutes les occurrences de M, puis
toutes les occurrences de S.

### Données d'entrée d'un 1ᵉʳ exemple

```
LMMMS
```

### Données de sortie du 1ᵉʳ exemple

```
0
```

### Justification des données de sortie du 1ᵉʳ exemple

Les livres sont déjà disposés de la manière souhaitée.

### Données d'entrée d'un 2ᵉ exemple

```
LLSLM
```

### Données de sortie du 2ᵉ exemple

```
2
```

### Justification des données de sortie du 2ᵉ exemple

En échangeant le S et le M, on obtient LLMLS. Ensuite, on atteint la
disposition souhaitée en

échangeant le M avec le L à sa droite. On a donc atteint la disposition
souhaitée en ayant effectué deux échanges. Il n'est pas possible
d'atteindre la disposition souhaitée en effectuant moins d'échanges
puisque l'échange nécessaire de S et M ne résulte pas en une disposition
qui satisfait aux critères de Valentina.

