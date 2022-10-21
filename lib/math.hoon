|%
:: Tail-recursive factorial
::
++  calc
  |_  b=@ud
  ++  addition        |=(a=@ (add a b))
  ++  division        |=(a=@ (div a b))
  ++  multiplication  |=(a=@ (mul a b))
  ++  subtraction     |=(a=@ (sub a b))
  --
++  factorial
  |=  n=@ud
  =/  t=@ud  1
  |-
  ?:  =(n 1)
      t
  $(n (dec n), t (mul t n))
::
:: Euler's Lucky Primes
::
++  lucky-primes
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
--