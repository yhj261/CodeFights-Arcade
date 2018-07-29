Each day a plant is growing by `upSpeed` meters. Each night that plant's height decreases by `downSpeed` meters due to the lack of sun heat. Initially, plant is `0` meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.

__Example__

For `upSpeed = 100`, `downSpeed = 10` and `desiredHeight = 910`, the output should be  
`growingPlant(upSpeed, downSpeed, desiredHeight) = 10`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] integer upSpeed__<br/><br/>A positive integer representing the daily growth.<br/><br/>_Guaranteed constraints:_<br/>`3 ≤ upSpeed ≤ 100`.

+ __[input] integer downSpeed__<br/><br/>A positive integer representing the nightly decline.<br/><br/>_Guaranteed constraints:_<br/>`2 ≤ downSpeed < upSpeed`.

+ __[input] integer desiredHeight__<br/><br/>A positive integer representing the threshold.<br/><br/>_Guaranteed constraints:_<br/>`4 ≤ desiredHeight ≤ 1000`.

+ __[output] integer__<br/><br/>The number of days that it will take for the plant to reach/pass `desiredHeight` (including the last day in the total count).
