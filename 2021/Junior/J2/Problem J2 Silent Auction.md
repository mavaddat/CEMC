# Problem J2: Silent Auction

## Problem Description

A charity is having a silent auction where people place bids on a prize
without knowing anyone else's bid. Each bid includes a person's name and
the amount of their bid. After the silent auction is over, the winner is
the person who has placed the highest bid. If there is a tie, the person
whose bid was placed first wins. Your job is to determine the winner of
the silent auction.

![Auction](PinClipart.com_auction-clip-art_5442706.png)

### Input Specification

The first line of input contains a positive integer *N*, where 1 ≤*N*≤
100, representing the number of bids collected at the silent auction.
Each of the next *N* pairs of lines contains a person's name on one
line, and the amount of their bid, in dollars, on the next line. Each
bid is a positive integer less than 2000. The order of the input is the
order in which bids were placed.

### Output Specification

Output the name of the person who has won the silent auction.

###### Sample Input 1

```
3
Ahmed
300
Suzanne
500
Ivona
450
```

###### Output for Sample Input 1

```
Suzanne
```

###### Explanation of Output for Sample Input 1

The highest bid placed was 500 and it was placed by Suzanne. Suzanne
wins the silent auction.

###### Sample Input 2

```
2
Ijeoma
20
Goor
20
```

###### Output for Sample Input 2

```
Ijeoma
```

###### Explanation of Output for Sample Input 2

The highest bid placed was 20 and it was placed by both Ijeoma and Goor.
Since Ijeoma's bid was placed first, Ijeoma wins the silent auction.

