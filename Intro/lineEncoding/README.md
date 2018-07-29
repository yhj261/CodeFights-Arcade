Given a string, return its encoding defined as follows:

+ First, the string is divided into the least possible number of disjoint substrings consisting of identical characters
  + for example, `"aabbbc"` is divided into `["aa", "bbb", "c"]`
+ Next, each _substring_ with length greater than one is replaced with a concatenation of its length and the repeating character
  + for example, _substring_ `"bbb"` is replaced by `"3b"`
+ Finally, all the new strings are concatenated together in the same order and a new string is returned.

__Example__

For `s = "aabbbc"`, the output should be  
`lineEncoding(s) = "2a3bc"`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] string s__<br/><br/>String consisting of lowercase English letters.<br/><br/>_Guaranteed constraints:_<br/>`4 ≤ s.length ≤ 15`.

+ __[output] string__<br/><br/>Encoded version of `s`.
