# Problem J4: Arranging Books

## Problem Description

Valentina wants books on a shelf to be arranged in a particular way.
Every time she sees a shelf of books, she rearranges the books so that
all the large books appear on the left, followed by all the medium-sized
books, and then all the small books on the right. She does this by
repeatedly choosing any two books and exchanging their locations.
Exchanging the locations of two books is called a *~swap~*.

Help Valentina determine the fewest number of swaps needed to arrange a
shelf of books as she wishes.

### Input Specification

The input will consist of exactly one line containing at least one
character.

The following table shows how the available 15 marks are distributed.

  | Points for Correct Output 	| Input limits at Scale              	| Input type at Scale                        	|
|---------------------------	|------------------------------------	|--------------------------------------------	|
|     7 marks               	|     at most 1000   characters      	|     each character   will be L or S        	|
|     2 marks               	|     at most 500000   characters    	|     each character   will be L or S        	|
|     4 marks               	|     at most 1000 characters        	|     each character   will be L, M, or S    	|
|     2 marks               	|     at most 500000   characters    	|     each character   will be L, M, or S    	|

### Output Specification

Output a single integer which is equal to the minimum possible number of
swaps needed to arrange the books so that all occurrences of L come
first, followed by all occurrences of M, and then all occurrences of S.

###### Sample Input 1

```
LMMMS
```

###### Output for Sample Input 1

```
0
```

###### Explanation of Output for Sample Input 1

The books are already arranged according to Valentina's wishes.

###### Sample Input 2

```
LLSLM
```

###### Output for Sample Input 2 2

###### Explanation of Output for Sample Input 2

By swapping the S and M, we end up with LLMLS. Then the M can be swapped
with the L to its right. This is one way to use two swaps to arrange the
books as Valentina wants them to be. It is not possible to use fewer
swaps because both S and M need to be moved but using one swap to
exchange them does not leave the books arranged as Valentina wants them
to be.

