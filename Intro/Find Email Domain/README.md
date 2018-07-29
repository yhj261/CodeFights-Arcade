An email address such as `"John.Smith@example.com"` is made up of a local part (`"John.Smith"`), an `"@"` symbol, then a domain part (`"example.com"`).

The domain name part of an email address may only consist of letters, digits, hyphens and dots. The local part, however, also allows a lot of different special characters. [Here](https://en.wikipedia.org/wiki/Email_address#Examples) you can look at several examples of correct and incorrect email addresses.

Given a valid email address, find its domain part.

__Example__

+ For `address = "prettyandsimple@example.com"`, the output should be<br/>`findEmailDomain(address) = "example.com"`;
+ For `address = "<>[]:,;@\"!#$%&*+-/=?^_{}| ~.a\"@example.org"`, the output should be<br/>`findEmailDomain(address) = "example.org"`.

__Input/Output__

+ __[execution time limit] 0.5 seconds (cpp)__

+ __[input] string address__<br/><br/>_Guaranteed constraints:_<br/>`10 ≤ address.length ≤ 50`.

__[output] string__
