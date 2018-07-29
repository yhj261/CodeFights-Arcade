After becoming famous, CodeBots decided to move to a new building and live together. The building is represented by a rectangular matrix of rooms, each cell containing an integer - the price of the room. Some rooms are free (their cost is 0), but that's probably because they are haunted, so all the bots are afraid of them. That is why any room that is free or is located anywhere below a free room in the same column is not considered suitable for the bots.

Help the bots calculate the total price of all the rooms that are suitable for them.

__Example__

For

matrix = [[0, 1, 1, 2], <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          [0, 5, 0, 0],<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          [2, 0, 3, 3]] <br />
          
the output should be
matrixElementsSum(matrix) = 9.

Here's the rooms matrix with unsuitable rooms marked with 'x':

[[x, 1, 1, 2], <br /> &nbsp;
 [x, 5, x, x], <br /> &nbsp;
 [x, x, x, x]] <br /> 
 
Thus, the answer is 1 + 5 + 1 + 2 = 9.

__Input/Output__

* __[time limit] 500ms (cpp)__
* __[input] array.array.integer matrix__ <br /> <br /> 2-dimensional array of integers representing a rectangular matrix of the building.<br /><br />Guaranteed constraints:<br />1 ≤ matrix.length ≤ 5,<br />1 ≤ matrix[i].length ≤ 5,
<br />0 ≤ matrix[i][j] ≤ 10.

* __[output] integer__
