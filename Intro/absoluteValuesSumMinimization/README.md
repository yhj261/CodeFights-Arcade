Given a sorted array of integers `a`, find such an integer `x` that the value of
```
abs(a[0] - x) + abs(a[1] - x) + ... + abs(a[a.length - 1] - x)
```
is the _smallest_ possible (here `abs` denotes the absolute value).<br>
If there are several possible answers, output the _smallest_ one.

__Example__

For `a = [2, 4, 7]`, the output should be<br>
`absoluteValuesSumMinimization(a) = 4`.

__Input/Output__

+ __[time limit] 500ms (cpp)__
+ __[input] array.integer a__<br><br>A non-empty array of integers, sorted in ascending order.<br><br>_Guaranteed constraints:_<br>`1 ≤ a.length ≤ 200`,<br>`-106 ≤ a[i] ≤ 106`.

+ __[output] integer__
