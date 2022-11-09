
:: Slow Decrement
::
::::  hoon/decrement/gen
  ::
=<
|=  n=@ud
^-  ?(~ @ud)
(decrement n)
|%
++  decrement
  |=  n=@ud
  ^-  ?(~ @ud)
  =/  res  0
  |-
  ?:  =(n 0)
    ~&  "Can't decrement 0"
    ~
  ?:  =(n +(res))
    res
  $(res +(res))
--
