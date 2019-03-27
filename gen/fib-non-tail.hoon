::  Returns a list of n fibonacci sequence numbers
::  /hoon/fib-non-tail/gen
::
|%
++  fibo
  |=  a=@ud
  ^-  @ud
  ?:  =(a 1)
    0
  ?:  =(a 2)
    1
  (add (fibo (dec a)) (fibo (dec (dec a))))
--
|=  n=@ud
^-  (list @ud)
=/  count=@ud  1
|-
?:  (gth count n)
  ~
:-  (fibo count)
%=  $
  count  +(count)
==
