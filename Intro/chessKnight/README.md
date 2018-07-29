Given a position of a knight on the standard chessboard, find the number of different moves the knight can perform.

The knight can move to a square that is two squares horizontally and one square vertically, or two squares vertically and one square horizontally away from it. The complete move therefore looks like the letter L. Check out the image below to see all valid moves for a knight piece that is placed on one of the central squares.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Rainbow%20of%20Clarity/chessKnight/knight.jpg)

__Example__

+ For `cell = "a1"`, the output should be<br/>`chessKnight(cell) = 2`.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Rainbow%20of%20Clarity/chessKnight/ex_1.jpg)


+ For `cell = "c2"`, the output should be<br/>`chessKnight(cell) = 6`.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Rainbow%20of%20Clarity/chessKnight/ex_2.jpg)

__Input/Output__

+ __[time limit] 500ms (cpp)__
+ __[input] string cell__<br/><br/>String consisting of 2 letters - coordinates of the knight on an `8 × 8` chessboard in chess notation.

+ __[output] integer__
