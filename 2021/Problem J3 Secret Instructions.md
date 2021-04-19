# Problem J3: Secret Instructions

## Problem Description

Professor Santos has decided to hide a secret formula for a new type of
biofuel. She has, however, left a sequence of coded instructions for her
assistant.

Each instruction is a sequence of five digits which represents a
direction to turn and the number of steps to take.

The first two digits represent the direction to turn:

- If their sum is odd, then the direction to turn is left.

- If their sum is even and not zero, then the direction to turn is
    right.

- If their sum is zero, then the direction to turn is the same as the
    previous instruction.

The remaining three digits represent the number of steps to take which
will always be at least 100.

Your job is to decode the instructions so the assistant can use them to
find the secret formula.

### Input Specification

There will be at least two lines of input. Each line except the last
line will contain exactly five digits representing an instruction. The
first line will not begin with 00. The last line will contain 99999 and
no other line will contain 99999.

### Output Specification

There must be one line of output for each line of input except the last
line of input. These output lines correspond to the input lines (in
order). Each output line gives the decoding of the corresponding
instruction: either right or left, followed by a single space, followed
by the number of steps to be taken in that direction.

###### Sample Input

```
57234
00907
34100
99999
```

###### Output for Sample Input

right 234
right 907
left 100

###### Explanation of Output for Sample Input

The first instruction is 57234 which is decoded as right 234 because 5 +
7 = 12 which is even and 57 is followed by 234.

The second instruction is 00907 which is decoded with the same direction
as the previous instruction (right) but with 907 steps.

The third instruction is 34100 which is decoded as `left 100` because 3+4
= 7 which is odd and 34 is followed by 100.

The last line contains 99999 which tells us these are the only three
instructions.

