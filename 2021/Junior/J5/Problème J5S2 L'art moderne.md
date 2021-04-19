# Problème J5/S2 : L'art moderne

## Énoncé du problème

Un nouvel artiste a développé une façon unique de créer des motifs en
damier. L'artiste se procure d'abord une toile de couleur noire et de
dimensions *M*×*N*. Ensuite, l'artiste choisit à plusieurs reprises une
rangée ou une colonne et donne un coup de son pinceau magique le long de
la rangée ou de la colonne. Le pinceau change la couleur de chaque case
de la rangée ou de la colonne du noir à l'or ou de l'or au noir.

Étant donné les choix de l'artiste, votre tâche consiste à déterminer le
nombre de cases dorées´ qui paraissent dans le motif en damier
résultant.

![Daniel Rozin, “PomPom Mirror,” 2015%0ADaniel%20Rozin%0A%C2%ABPomPom%20Mirror%C2%BB%2C%202015%0A928%20pompons%20en%20fausse%20fourrure%2C%20464%20moteurs%2C%20%C3%A9lectronique%20de%20contr%C3%B4le%2C%20capteur%20de%20mouvement%20xbox%20kinect%2C%20ordinateur%20mac-mini%2C%20logiciel%20personnalis%C3%A9%2C%20armature%20en%20bois%0A48%20x%2048%20x%2018%20pouces%20%2F%20121%2C9%20x%20121%2C9%20x%2045%2C7%20cm%0A%C3%89dition%20de%206%0A%0ALe%20%22PomPom%20Mirror%22%20anthropomorphe%20de%20Rozin%20comprend%20un%20r%C3%A9seau%20synchronis%C3%A9%20de%20928%20bouff%C3%A9es%20sph%C3%A9riques%20en%20fausse%20fourrure.%20Organis%C3%A9e%20en%20une%20grille%20tridimensionnelle%20de%20beige%20et%20de%20noir%2C%20la%20sculpture%20est%20contr%C3%B4l%C3%A9e%20par%20des%20centaines%20de%20moteurs%20qui%20construisent%20des%20silhouettes%20de%20spectateurs%20%C3%A0%20l%27aide%20de%20la%20vision%20par%20ordinateur.%20Le%20long%20de%20sa%20surface%2C%20les%20figures%20apparaissent%20comme%20des%20repr%C3%A9sentations%20duveteuses%20ressemblant%20%C3%A0%20des%20animaux%20dans%20le%20plan%20de%20l%27image%2C%20qui%20est%20rendu%20perm%C3%A9able%20par%20un%20mouvement%20%C2%ABpush-pull%C2%BB%20vers%20l%27avant%20et%20vers%20l%27arri%C3%A8re%20de%20%C2%ABpixels%C2%BB%20maill%C3%A9s.%20Des%20traces%20fantomatiques%20s%27estompent%20et%20%C3%A9mergent%2C%20alors%20que%20la%20composition%20motoris%C3%A9e%20bourdonne%20dans%20un%20mouvement%20unifi%C3%A9%2C%20apparemment%20vivante%20et%20respirant%20comme%20un%20corps%20%C3%A0%20part.%0A%0AFilm%C3%A9%20et%20mont%C3%A9%20par%20Victoria%20Sendra.](rozin.gif)

### Précisions par rapport aux données d'entrée

La première ligne des données d'entrée ne contient qu'un seul entier
strictement positif, soit *M*. La deuxième ligne des données d'entrée ne
contient qu'un seul entier strictement positif, soit *N*. La troisième
ligne des données d'entrée ne contient qu'un seul entier strictement
positif, soit *K*. Le restant des données d'entrée sera composé de *K*
lignes; ces lignes représentant les choix de l'artiste. Chacune de ces
*K* lignes commencera par R ou par C (indiquant respectivement une
rangée ou une colonne) suivi d'un seul espace puis d'un entier
strictement positif inférieur ou égal à *N*. Cet entier représente le
numéro d'une rangée ou d'une colonne. Les rangées sont numérotées de
haut en bas de 1 à *M*. Les colonnes sont numérotées de gauche à droite
de 1 à *N*.

Le tableau suivant indique la manière dont les 15 points disponibles
sont répartis.

| Points pour une sortie correcte 	| Limite M à cette échelle de points 	| Limite N à cette échelle de points 	| Limite K à cette échelle de points 	| Type d'entrée à cette échelle de points                                                  	|
|---------------------------------	|------------------------------------	|------------------------------------	|------------------------------------	|------------------------------------------------------------------------------------------	|
|     1 point                     	|     M = 1                          	|     N = 1                          	|     K≤ 100                         	|     Une seule case,   et jusqu’à 100 choix de l’artiste                                  	|
|     4 points                    	|     M = 1                          	|     N≤ 100                         	|     K≤ 100                         	|     Une seule rangée,   et jusqu’à 100 choix de l’artiste                                	|
|     5 points                    	|     M≤ 100                         	|     N≤ 100                         	|     K≤ 100                         	|     Jusqu’à 100   rangées, et jusqu’à 100 colonnes, et jusqu’à 100 choix de l’artiste    	|
|     5 points                    	|     MN≤ 5000000                    	|                                    	|     K≤ 1000000                     	|     Jusqu’à 5000000 cases, et jusqu’à 1000000 choix de   l’artiste                       	|

### Précisions par rapport aux données de sortie

Les données de sortie ne devraient contenir qu'un seul entier non
négatif. Cet entier est égal au nombre de cases dorées dans le motif en
damier résultant des choix de l'artiste.

### Données d'entrée d'un 1ᵉʳ exemple

```
3
3
2
R 1
C 1
```

### Données de sortie du 1ᵉʳ exemple

```
4
```

### Justification des données de sortie du 1ᵉʳ exemple

Après avoir donné un coup de pinceau le long de la première rangée, la
toile ressemble à ceci (G représente les cases dorées et B les cases
noires) :

```
GGG
BBB
BBB
```

Ensuite, après avoir donné un coup de pinceau le long de la première
colonne, il y a quatre cases dorées dans le motif en damier final de
l'artiste :

```
BGG
GBB
GBB
```

### Données d'entrée d'un 2ᵉ exemple

```
4
5
7
R 3
C 1
C 2
R 2
R 2
C 1
R 4
```

### Données de sortie du 2ᵉ exemple

```
10
```

### Justification des données de sortie du 2ᵉ exemple

Il y a dix cases dorées dans le motif en damier final de l'artiste :

```
BGBBB
BGBBB
GBGGG
GBGGG
```