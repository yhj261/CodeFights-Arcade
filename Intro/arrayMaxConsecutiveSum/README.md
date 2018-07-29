Given array of integers, find the maximal possible sum of some of its k consecutive elements.

Example

For `inputArray = [2, 3, 5, 1, 6]` and `k = 2`, the output should be  
`arrayMaxConsecutiveSum(inputArray, k) = 8`.

All possible sums of `2` consecutive elements are:

+ `2 + 3 = 5`;
+ `3 + 5 = 8`;
+ `5 + 1 = 6`;
+ `1 + 6 = 7`. <br/>Thus, the answer is `8`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] array.integer inputArray__<br/><br/>Array of positive integers.<br/><br/>_Guaranteed constraints_:<br/>`3 ≤ inputArray.length ≤ 105`,<br/>`1 ≤ inputArray[i] ≤ 1000`.

+ __[input] integer k__<br/><br/>An integer (not greater than the length of `inputArray`).<br/><br/>_Guaranteed constraints_:<br/>`1 ≤ k ≤ inputArray.length`.

+ __[output] integer__<br/><br/>The maximal possible sum.
