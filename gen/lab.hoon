:: Lab cores
::
::::  hoon/lab/gen
  ::
|=  [a=@tas x=@ud l=(list @ud)]
^-  @ud
=<
?:  =(%cw a)
  (corrected-weight x)
(weekly-reagent l)
|%
+$  action  ?(%cw %wr)
++  corrected-weight
  |=  x=@ud
  ^-  @ud
  ?:  (lth x 10)
    0
  x
++  weekly-reagent
  |=  l=(list @ud)
  ^-  @ud
  (roll `(list @)`l add)
--
