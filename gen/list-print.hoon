:: List printer
::
::::  hoon/list-print/hsl/gen
  ::
|=  l=(list @ud)
^-  ~
=/  count=@ud  0             ::  def var counter, an unsigned decimal, initially 0
=/  len  (lent l)            ::  list length
|-
?:  (gte count len)          ::  if len >= count
  ~                          ::  exit
~&   (snag count l)
$(count (add 1 count))       ::    and "recurse to |- replacing count with (count + 1)" as the tail
