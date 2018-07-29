Check if the given string is a correct time representation of the 24-hour clock.

__Example__

+ For `time = "13:58"`, the output should be<br/>`validTime(time) = true`;
+ For `time = "25:51"`, the output should be<br/>`validTime(time) = false`;
+ For `time = "02:76"`, the output should be<br/>`validTime(time) = false`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] string time__<br/><br/>A string representing time in `HH:MM` format. It is guaranteed that the first two characters, as well as the last two characters, are digits.

+ __[output] boolean__<br/><br/>`true` if the given representation is correct, `false` otherwise.
