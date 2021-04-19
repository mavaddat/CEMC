# Problem J1: Boiling Water

## Problem Description

At sea level, atmospheric pressure is 100kPa and water begins to boil at
100℃. As you go above sea level, atmospheric pressure decreases, and
water boils at lower temperatures. As you go below sea level,
atmospheric pressure increases, and water boils at higher temperatures.
A formula relating atmospheric pressure to the temperature at which
water begins to boil is

> *P* = 5 × *B* − 400

where *P* is atmospheric pressure measured in kPa, and *B* is the
temperature at which water begins to boil measured in ℃.

Given the temperature at which water begins to boil, determine
atmospheric pressure. Also determine if you are below sea level, at sea
level, or above sea level.

*Note that the science of this problem is generally correct but the
values of* 100*℃ and* 100*kPa are approximate and the formula is a
simplification of the exact relationship between water's boiling point
and atmospheric pressure.*

### Input Specification

The input is one line containing an integer *B* where *B*≥ 80 and *B*≤
200. This represents the temperature in ℃ at which water begins to
boil.

### Output Specification

The output is two lines. The first line must contain an integer which is
atmospheric pressure measured in kPa. The second line must contain the
integer -1, 0, or 1. This integer represents whether you are below sea
level, at sea level, or above sea level, respectively.

#### Sample Input 1

```
99
```

#### Output for Sample Input 1

```
95
1
```

#### Explanation of Output for Sample Input 1

When *B* = 99, we can substitute into the formula and get *P* = 5 × 99 −
400 which equals 95. Since 95kPa is less than 100kPa, you are above sea
level.

#### Sample Input 2

```
102
```

#### Output for Sample Input 2

```
110
-1
```

#### Explanation of Output for Sample Input 2

When *B* = 102, we can substitute into the formula and get *P* = 5 × 102
− 400 which equals 110. Since 110kPa is greater than 100kPa, you are
below sea level.

