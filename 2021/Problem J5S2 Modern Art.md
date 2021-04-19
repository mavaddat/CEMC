# Problem J5/S2: Modern Art

## Problem Description

A new and upcoming artist has a unique way to create checkered patterns.
The idea is to use an *M*-by-*N* canvas which is initially entirely
black. Then the artist repeatedly chooses a row or column and runs their
magic brush along the row or column. The brush changes the colour of
each cell in the row or column from black to gold or gold to black.

Given the artist's choices, your job is to determine how much gold
appears in the pattern determined by these choices.

### Input Specification

The first line of input will be a positive integer *M*. The second line
of input will be a positive integer *N*. The third line of input will be
a positive integer *K*. The remaining input will be *K* lines giving the
choices made by the artist. Each of these lines will either be R
followed by a single space and then an integer which is a row number, or
C followed by a single space and then an integer which is a column
number. Rows are numbered top down from 1 to *M*. Columns are numbered
left to right from 1 to *N*.

The following table shows how the available 15 marks are distributed.

| Points for Correct Output 	| M Limit at Scale   	| N Limit at Scale 	| K Limit at Scale  	| Input type at Scale                                                             	|
|---------------------------	|--------------------	|------------------	|-------------------	|---------------------------------------------------------------------------------	|
|     1 mark                	|     M = 1          	|     N = 1        	|     K≤ 100        	|     only one cell, and up to 100 choices by   the artist                        	|
|     4 marks               	|     M = 1          	|     N≤ 100       	|     K≤ 100        	|     only one row, and up to 100 choices by   the artist                         	|
|     5 marks               	|     M≤ 100         	|     N≤ 100       	|     K≤ 100        	|     up to 100 rows,   up to 100 columns, and up to 100 choices by the artist    	|
|     5 marks               	|     MN≤ 5000000    	|                  	|     K≤ 1000000    	|     up to 5000000 cells, and up to 1000000   choices by the artist              	|

### Output Specification

Output one non-negative integer which is equal to the number of cells
that are gold in the pattern determined by the artist's choices.

###### Sample Input 1

```
3
3
2
R 1
C 1
```

###### Output for Sample Input 1

```
4
```

###### Explanation of Output for Sample Input 1

After running the brush along the first row, the canvas looks like this:

```
GGG
BBB
BBB
```

Then after running the brush along the first column, four cells are gold
in the final pattern determined by the artist's choices:

```
BGG
GBB
GBB
```

###### Sample Input 2

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

###### Output for Sample Input 2

```
10
```

###### Explanation of Output for Sample Input 2

Ten cells are gold in the final pattern determined by the artist's
choices:

```
BGBBB
BGBBB
GBGGG
GBGGG
```

