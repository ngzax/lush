::  Generates a list of n fibonacci sequence numbers
::  /hoon/fib/gen
::
|=  n=@ud
:: returns a list of unsigned decimals
::
^-  (list @ud)
=/  fib-1=@ud  0
=/  fib-2=@ud  1
=/  count=@ud  1
:: Create a trap (a core with one arm $) and evaluate it.
::
|-
?.  :: unless count is less than or equal to n
    ::
    (lte count n)
  ::  exit
  ::
  ~
::  otherwise add a new cell with the first fibonacci number
::  and the result of recursing back after shifting our sequence to the right:
::  (0, 1) -> (1, 1) -> (1, 2) -> &c.
::
:-  fib-1
$(fib-1 fib-2, fib-2 (add fib-1 fib-2), count +(count))
