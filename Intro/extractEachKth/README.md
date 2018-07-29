Given array of integers, remove each `kth` element from it.

__Example__

For `inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]` and `k = 3`, the output should be <br/>
`extractEachKth(inputArray, k) = [1, 2, 4, 5, 7, 8, 10]`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] array.integer inputArray__<br/><br/>_Guaranteed constraints:_<br/>`5 ≤ inputArray.length ≤ 15`,<br/>`-20 ≤ inputArray[i] ≤ 20`.

+ __[input] integer k__<br/><br/>_Guaranteed constraints:_<br/>`1 ≤ k ≤ 10`.

+ __[output] array.integer__<br/><br/>inputArray without elements `k - 1`, `2k - 1`, `3k - 1` etc.
