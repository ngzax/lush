::  Returns a list of n fibonacci sequence numbers
::
::::  /hoon/fib/gen
  ::
|=  n=@ud                    :: def a gate that takes 1 arg sample
=/  a=@ud  0                 :: a is the first fib number
=/  b=@ud  1                 :: b is the second
=/  c=@ud  1                 :: loop counter
|-                           :: Produce a trap (a core with one arm $) and evaluate it.
^-  (list @)                 :: cast our return to a list of atoms
?.  (lte c n)                :: loop until counter reaches n
  ~                          :: end
:-  a                        :: add a new cell with the number
$(a b, b (add a b), c +(c))  ::  and the result of recursing back, shifting our sequence to the right:
                             ::  (0, 1) -> (1, 1) -> (1, 2) -> &c.
