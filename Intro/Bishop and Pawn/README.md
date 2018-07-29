Given the positions of a white `bishop` and a black `pawn` on the standard chess board, determine whether the bishop can capture the pawn in one move.

The bishop has no restrictions in distance for each move, but is limited to diagonal movement. Check out the example below to see how it can move:

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Dark%20Wilderness/Bishop%20and%20Pawn/bishop.jpg)

__Example__

+ For `bishop = "a1"` and `pawn = "c3"`, the output should be<br/>`bishopAndPawn(bishop, pawn) = true`.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Dark%20Wilderness/Bishop%20and%20Pawn/ex1.jpg)

+ For `bishop = "h1"` and `pawn = "h3"`, the output should be<br/>`bishopAndPawn(bishop, pawn) = false`.

![alt text](https://github.com/Lintik/CodeFights-Arcade/blob/master/Intro/Dark%20Wilderness/Bishop%20and%20Pawn/ex2.jpg)

__Input/Output__

+ __[[execution time limit] 0.5 seconds (cpp)__
+ __[input] string bishop__<br/><br/>Coordinates of the white bishop in the chess notation.

+ __[input] string pawn__<br/><br/>Coordinates of the black pawn in the same notation.

+ __[output] boolean__<br/><br/>`true` if the bishop can capture the pawn, `false` otherwise.
