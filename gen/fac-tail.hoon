::  Returns the factorial of n, Tail recursive
::
::::  /hoon/fac-tail/gen
  ::
  |=  n=@ud
  =/  t=@ud  1
  |-
  ?:  =(n 1)
      t
  $(n (dec n), t (mul t n))
