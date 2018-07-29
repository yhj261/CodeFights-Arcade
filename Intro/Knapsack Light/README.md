You found two items in a treasure chest! The first item weighs `weight1` and is worth `value1`, and the second item weighs `weight2` and is worth `value2`. What is the total maximum value of the items you can take with you, assuming that your max weight capacity is `maxW` and you can't come back for the items later?

__Note__ that there are only two items and you can't bring more than one item of each type, i.e. you can't take two first items or two second items.

__Example__

+ For `value1 = 10`, `weight1 = 5`, `value2 = 6`, `weight2 = 4` and `maxW = 8`, the output should be<br/>`knapsackLight(value1, weight1, value2, weight2, maxW) = 10`.<br/><br/>You can only carry the first item.

+ For `value1 = 10`, `weight1 = 5`, `value2 = 6`, `weight2 = 4` and `maxW = 9`, the output should be<br/>`knapsackLight(value1, weight1, value2, weight2, maxW) = 16`.<br/><br/>You're strong enough to take both of the items with you.

+ For `value1 = 5`, `weight1 = 3`, `value2 = 7`, `weight2 = 4` and `maxW = 6`, the output should be<br/>`knapsackLight(value1, weight1, value2, weight2, maxW) = 7`.<br/><br/>You can't take both items, but you can take any of them.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] integer value1__<br/><br/>_Guaranteed constraints:_<br/>`2 ≤ value1 ≤ 20`.

+ __[input] integer weight1__<br/><br/>_Guaranteed constraints:_<br/>`2 ≤ weight1 ≤ 10`.

+ __[input] integer value2__<br/><br/>_Guaranteed constraints:_<br/>`2 ≤ value2 ≤ 20`.

+ __[input] integer weight2__<br/><br/>_Guaranteed constraints:_<br/>`2 ≤ weight2 ≤ 10`.

+ __[input] integer maxW__<br/><br/>_Guaranteed constraints:_<br/>`1 ≤ maxW ≤ 20`.

+ __[output] integer__
