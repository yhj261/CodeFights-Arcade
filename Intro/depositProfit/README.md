You have deposited a specific amount of dollars into your bank account. Each year your balance increases at the same growth `rate`. Find out how long it would take for your balance to pass a specific `threshold` with the assumption that you don't make any additional deposits.

__Example__

For `deposit = 100`, `rate = 20` and `threshold = 170`, the output should be  
`depositProfit(deposit, rate, threshold) = 3`.

Each year the amount of money on your account increases by `20%`. It means that throughout the years your balance would be:

+ year 0: `100;`
+ year 1: `120;`
+ year 2: `144;`
+ year 3: `172,8`.

Thus, it will take `3` years for your balance to pass the `threshold`, which is the answer.

__Input/Output__

__[time limit] 500ms (cpp)__
+ __[input] integer deposit__<br><br>The initial deposit as a positive integer.<br><br>_Guaranteed constraints:_<br>`1 ≤ deposit ≤ 100`.

+ __[input] integer rate__<br><br>The rate of increase. Each year the balance increases by the rate percent of the current sum.<br><br>_Guaranteed constraints:_<br>`1 ≤ rate ≤ 100`.

+ __[input] integer threshold__<br><br>The target balance.<br><br>_Guaranteed constraints:_<br>`deposit < threshold ≤ 200`.

+ __[output] integer__<br><br>The number of years it would take to hit the threshold.
