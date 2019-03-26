::  Returns a list of n fibonacci sequence numbers
::
::::  /hoon/fib-non-tail/gen
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
|=  n=@ud                    :: def a gate that takes 1 arg sample
^-  (list @ud)               :: cast our return to a list of unsigned decimals
=/  c=@ud  1                 :: loop counter
|-                           :: Produce a trap (a core with one arm $) and evaluate it.
^-  (list @ud)               :: cast our return to a list of unsigned decimals
?:  (gth c n)                :: loop until counter passes n
  ~                          :: end
:-  (fibo c)                 :: add a new cell with the fibonacci number
$(c +(c))                    :: increment and loop.
