A string is said to be beautiful if `b` occurs in it no more times than `a`; `c` occurs in it no more times than `b`; etc.

Given a string, check whether it is _beautiful_.

__Example__

+ For `inputString = "bbbaacdafe"`, the output should be<br/>`isBeautifulString(inputString) = true`;
+ For `inputString = "aabbb"`, the output should be<br/>`isBeautifulString(inputString) = false`;
+ For `inputString = "bbc"`, the output should be<br/>`isBeautifulString(inputString) = false`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] string inputString__<br/><br/>A string of lowercase letters.<br/><br/>_Guaranteed constraints:_<br/>`3 ≤ inputString.length ≤ 50`.

+ __[output] boolean__
