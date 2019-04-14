::  Returns the factorial of n
::
::::  /hoon/fac-non-tail/gen
  ::
|=  n=@ud
?:  =(n 1)
  1
(mul n $(n (dec n)))
