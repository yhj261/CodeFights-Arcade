Consider integer numbers from `0` to `n - 1` written down along the circle in such a way that the distance between any two neighbouring numbers is equal (note that `0` and `n - 1` are neighbouring, too).

Given `n` and `firstNumber`, find the number which is written in the radially opposite position to `firstNumber`.

__Example__

For `n = 10` and `firstNumber = 2`, the output should be  
`circleOfNumbers(n, firstNumber) = 7`.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Through%20the%20Fog/Circle%20of%20Numbers/example.png)

__Input/Output__

+ __[time limit] 500ms (cpp)__
+ __[input] integer n__<br><br>A positive even integer.<br><br>_Guaranteed constraints:_<br>`4 ≤ n ≤ 20`.

+ __[input] integer firstNumber__<br><br>_Guaranteed constraints:_<br>`0 ≤ firstNumber ≤ n - 1`.

+ __[output] integer__
