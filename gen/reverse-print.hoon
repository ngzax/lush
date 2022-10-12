:: List printer
::
::::  hoon/list-print/hsl/gen
  ::
|=  l=(list @ux)
^-  ~
=/  count=@ud  0
=/  len  (lent l)
|-
?:  (gte count len)
  ~
~&   (snag (sub (dec len) count) l)
$(count (add 1 count))
