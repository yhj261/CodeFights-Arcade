Given an array of equal-length strings, check if it is possible to rearrange the strings in such a way that after the rearrangement the strings at consecutive positions would differ by exactly one character.

__Example__

+ For `inputArray = ["aba", "bbb", "bab"]`, the output should be<br>`stringsRearrangement(inputArray) = false;`<br><br>All rearrangements don't satisfy the description condition.

+ For inputArray = ["ab", "bb", "aa"], the output should be<br>`stringsRearrangement(inputArray) = true.`<br><br>Strings can be rearranged in the following way: `"aa"`, `"ab"`, `"bb"`.

__Input/Output__

+ __[time limit] 500ms (cpp)__
+ __[input] array.string inputArray__<br><br>A non-empty array of strings of lowercase letters.<br><br>_Guaranteed constraints:_<br>`2 ≤ inputArray.length ≤ 10`,<br>`1 ≤ inputArray[i].length ≤ 15`.

+ __[output] boolean__
