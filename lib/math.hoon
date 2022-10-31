|%
++  calc
  |_  b=@ud
  ++  addition        |=(a=@ (add a b))
  ++  division        |=(a=@ (div a b))
  ++  multiplication  |=(a=@ (mul a b))
  ++  subtraction     |=(a=@ (sub a b))
  --
++  factorial
:: Tail-recursive factorial
::
  |=  n=@ud
  =/  t=@ud  1
  |-
  ?:  =(n 1)
      t
  $(n (dec n), t (mul t n))
++  lucky-primes
::
:: Euler's Lucky Primes
::
  |=  n=@ud
  ^-  (list @ud)
  =/  k      1
  =/  lucky  (sy ~[0 2 3 5 11 17 41])
  =/  res    *(list @ud)
  |-
  ?:  (~(has in lucky) n)
    ?:  =(k n)
      res
    %=  $
      res  (weld res ~[(add n (sub (pow k 2) k))])
      k    +(k)
    ==
  ~&  "That is not a lucky number."
  res
++  sub
::  difference
::
  |=  [a=@ b=@]
  ^-  @
  ?.  =(0 b)
    $(a (dec a), b (dec b))
  a
++  symtoint
:: convert a symbol containing the name of an integer
:: into the integer itself
::
  |=  sym=?(%one %two %three %four %five)
  ^-  @ud
  ?-  sym
    %one    1
    %two    2
    %three  3
    %four   4
    %five   5
==
--