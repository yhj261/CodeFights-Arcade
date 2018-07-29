Correct variable names consist only of Latin letters, digits and underscores and they can't start with a digit.

Check if the given string is a correct variable name.

__Example__

+ For `name = "var_1__Int"`, the output should be<br>`variableName(name) = true;`
+ For `name = "qq-q"`, the output should be<br>`variableName(name) = false;`
+ For `name = "2w2`", the output should be<br>`variableName(name) = false`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] string name__<br><br>_Guaranteed constraints:_<br>1 ≤ name.length ≤ 10.

+ __[output] boolean__<br><br>`true` if name is a correct variable name, `false` otherwise.
