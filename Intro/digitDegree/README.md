Let's define _digit degree_ of some positive integer as the number of times we need to replace this number with the sum of its digits until we get to a one digit number.

Given an integer, find its digit degree.

__Example__

+ For n = 5, the output should be<br>`digitDegree(n) = 0`;<br>
+ For n = 100, the output should be<br>`digitDegree(n) = 1`.<br>`1 + 0 + 0 = 1`.
+ For n = 91, the output should be<br>`digitDegree(n) = 2`.<br>`9 + 1 = 10 -> 1 + 0 = 1`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] integer n__<br><br>_Guaranteed constraints:_<br>`5 ≤ n ≤ 109`.

+ __[output] integer__
