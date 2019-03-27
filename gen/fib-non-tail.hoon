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
=/  c=@ud  1
|-
^-  (list @ud)
?:  (gth c n)
  ~
:-  (fibo c)
$(c +(c))
