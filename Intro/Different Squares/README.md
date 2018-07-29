Given a rectangular matrix containing only digits, calculate the number of different `2 × 2` squares in it.

__Example__

For
```
matrix = [[1, 2, 1],
          [2, 2, 2],
          [2, 2, 2],
          [1, 2, 3],
          [2, 2, 1]]
```
the output should be<br/>
`differentSquares(matrix) = 6`.

Here are all `6` different `2 × 2` squares:

+ 1 2<br/>2 2
+ 2 1<br/>2 2
+ 2 2<br/>2 2
+ 2 2<br/>1 2
+ 2 2<br/>2 3
+ 2 3<br/>2 1

+ __Input/Output__

+ __[time limit] 3000ms (cs)__
+ __[input] array.array.integer matrix__<br/><br/>_Guaranteed constraints:_<br/>`1 ≤ matrix.length ≤ 100`,<br/>`1 ≤ matrix[i].length ≤ 100`,<br/>`0 ≤ matrix[i][j] ≤ 9`.

 + __[output] integer__<br/><br/>The number of different `2 × 2` squares in `matrix`.
