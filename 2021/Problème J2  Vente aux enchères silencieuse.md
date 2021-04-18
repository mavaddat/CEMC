# Problème J2 : Vente aux enchères silencieuse

## Énoncé du problème

Un organisme de bienfaisance organise une vente aux enchères
silencieuse. Lors de cet

évènement, les participants et participantes placent des offres sur un
article sans connaître les offres des autres. Chaque offre comprend le
nom de la personne et le montant de son offre. Une fois l'enchère
silencieuse terminée, la personne ayant placé l'offre la plus élevée
remportera l'enchère. S'il y a égalité, la personne dont l'offre a été
placée en premier remportera l'enchère. Votre tâche consiste à
déterminer le gagnant de l'enchère silencieuse.

### Précisions par rapport aux données d'entrée

La première ligne ne contient qu'un seul entier strictement positif *N*
tel que 1 ≤*N*≤ 100. Cet entier représente le nombre d'offres qui ont
été placées lors de la vente aux enchères silencieuse. Chacun des *N*
prochains couples de lignes contient le nom d'une personne sur une ligne
et le montant de son offre, en dollars, sur la ligne suivante. Chaque
offre est un entier strictement positif inférieur à 2000. L'ordre des
données d'entrée est celui dans lequel les offres ont été placées.

### Précisions par rapport aux données de sortie

Les données de sortie ne comprennent que le nom de la personne qui a
remporté l'enchère.

### Données d'entrée d'un 1ᵉʳ exemple

```
3
Ahmed
300
Suzanne
500
Ivona
450
```

### Données de sortie du 1ᵉʳ exemple Suzanne

### Justification des données de sortie du 1ᵉʳ exemple

L'offre la plus élevée (soit 500) a été placée par Suzanne. Suzanne
remporte donc l'enchère.

### Données d'entrée d'un 2ᵉ exemple

```
2
Ijeoma
20
Goor
20
```

### Données de sortie du 2ᵉ exemple

```
Ijeoma
```

### Justification des données de sortie du 2ᵉ exemple

L'offre la plus élevée (soit 20) a été placée et par Ijeoma et par Goor.
Or, puisque l'offre d'Ijeoma a été placée en premier, Ijeoma remporte
donc l'enchère.

