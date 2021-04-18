# Problème J3 : Des instructions secrètes

## Énoncé du problème

La professeure Santos a décidé de cacher une formule secrète pour un
nouveau type de biocarburant. Elle a cependant laissé une séquence
d'instructions codées pour son assistante.

Chaque instruction est composée d'une séquence de cinq chiffres. Ces
chiffres indiquent une direction vers laquelle il faut se tourner et un
nombre de pas à effectuer.

Les deux premiers chiffres représentent la direction vers laquelle il
faut se tourner :

- Si leur somme est impaire, alors il faut se tourner vers la gauche.

- Si leur somme est paire et non nulle, alors il faut se tourner vers
    la droite.

- Si leur somme est nulle, alors il faut se tourner dans la même
    direction que celle de l'instruction précédente.

Les trois chiffres restants représentent le nombre de pas à effectuer
(ce nombre sera toujours supérieur ou égal à 100).

Votre tâche consiste à décoder les instructions afin que l'assistante
puisse s'en servir pour retrouver la formule secrète.

### Précisions par rapport aux données d'entrée

Les données d'entrée contiennent au moins deux lignes. Chaque ligne, à
l'exception de la dernière, contiendra exactement cinq chiffres
représentant une instruction. La première ligne ne peut commencer par
00. La dernière ligne contiendra 99999 et aucune autre ligne ne peut
contenir 99999.

### Précisions par rapport aux données de sortie

Chaque ligne de données d'entrée doit avoir une ligne de données de
sortie correspondante (la seule exception étant la dernière ligne des
données d'entrée). De plus, les lignes de données de sortie doivent être
dans le même ordre que les lignes de données d'entrée auxquelles elles
correspondent. Chaque ligne de données de sortie présente le décodage de
l'instruction contenue dans la ligne de données d'entrée correspondante
: soit right (indiquant une direction vers la droite) soit left
(indiquant une direction vers la gauche), suivi d'un seul espace, suivi
du nombre de pas à faire dans cette direction.

### Exemple de données d'entrée

```in
57234
00907
34100
99999
```

### Exemple de données de sortie

```out
right 234
right 907
left 100
```

### Justification des données de sortie

La première ligne des données d'entrée, soit 57234, représente les
instructions right 234 car la somme des deux premiers chiffres, 5 + 7 =
12, est un nombre pair et 57 est suivi de 234.

La deuxième ligne des données d'entrée, soit 00907, représente les
instructions right 907 car la somme des deux premiers chiffres est nulle
(indiquant qu'il faut se tourner dans la même direction que celle de
l'instruction précédente) et ces chiffres sont suivi de 907.

La troisième ligne des données d'entrée, soit 34100, représente les
instructions left 100 car la somme des deux premiers chiffres, 3+4 = 7,
est un nombre impair et 34 est suivi de 100.

La dernière ligne des données d'entrée contient 99999 et signale la fin
des instructions. Donc, cet exemple ne contenait que trois instructions.

