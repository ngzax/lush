::
::::  hoon/sequence/gen
  ::
|=  count=@ud
=/  seq  0
^-  @ud
|-
=/  out  (pow seq 2)
?:  =(seq (dec count))
  out
~&  out
%=  $
  seq  (add seq 1)
==
