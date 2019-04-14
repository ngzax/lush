::  Return a list of numbers 1..end
::
::::  /hoon/listnum/gen
  ::
/?    310
|=  end=@                  ::  def gate takes 1 arg, end, an atom.
=/  count=@  1             ::  def var count, an atom, initially 1
|-                         ::  loop start
^-  (list @)               ::  def loop product as a list of atoms
?:  =(end (dec count))     ::  if end == (count - 1)
  ~                        ::  then exit
:-  count                  ::  else make a new cell with count as the head
$(count (add 1 count))     ::    and "recurse to |- [8] replacing count with (count + 1)" as the tail
