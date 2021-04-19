# Problem J5/S2: Modern Art

## Problem Description

A new and upcoming artist has a unique way to create checkered patterns.
The idea is to use an *M*-by-*N* canvas which is initially entirely
black. Then the artist repeatedly chooses a row or column and runs their
magic brush along the row or column. The brush changes the colour of
each cell in the row or column from black to gold or gold to black.

Given the artist's choices, your job is to determine how much gold
appears in the pattern determined by these choices.

![Daniel Rozin, “PomPom Mirror,” 2015%0ADaniel%20Rozin%0A%22PomPom%20Mirror%2C%22%202015%0A928%20faux%20fur%20pom%20poms%2C%20464%20motors%2C%20control%20electronics%2C%20xbox%20kinect%20motion%20sensor%2C%20mac-mini%20computer%2C%20custom%20Software%2C%20wooden%20armature%0A48%20x%2048%20x%2018%20in%20%2F%20121.9%20x%20121.9%20x%2045.7%20cm%0AEdition%20of%206%0A%0ARozin%E2%80%99s%20anthropomorphic%20%22PomPom%20Mirror%22%20features%20a%20synchronized%20array%20of%20928%20spherical%20faux%20fur%20puffs.%20Organized%20into%20a%20three-dimensional%20grid%20of%20beige%20and%20black%2C%20the%20sculpture%20is%20controlled%20by%20hundreds%20of%20motors%20that%20build%20silhouettes%20of%20viewers%20using%20computer-vision.%20Along%20its%20surface%2C%20figures%20appear%20as%20fluffy%20animal-like%20representations%20within%20the%20picture%20plane%2C%20which%20is%20made%20permeable%20by%20a%20%E2%80%98push-pull%E2%80%99%20forward%20and%20backward%20motion%20of%20meshed%20%E2%80%98pixels%E2%80%99.%20Ghostly%20traces%20fade%20and%20emerge%2C%20as%20the%20motorized%20composition%20hums%20in%20unified%20movement%2C%20seemingly%20alive%20and%20breathing%20as%20a%20body%20of%20its%20own.%0A%0AFilmed%20and%20edited%20by%20Victoria%20Sendra.](rozin.gif)

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

