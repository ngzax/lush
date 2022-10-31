|%
++  count-elements
:: Answer the number of words in a sentence.
::
  |=  sent=tape
  ^-  @ud
  (lent (split-tape sent))
++  hex-color
:: accepts a tape representing a hexadecimal color value and
:: returns the equivalent `@ux` hexadecimal value.
::
  |=  color=tape
  ^-  @ux
  |-
  ?:  =((snag 1 color) 'x')
    `@ux`(slav %ux (crip `tape`(into (cass color) 4 '.')))
  ?:  =((snag 0 color) '#')
    $(color (tail (slag 0 color)))
  $(color (weld "0x" color))
++  split-tape
:: Split a sentence on spaces.
::
  |=  sent=tape
  ^-  (list tape)
  =/  index   0
  =/  result  *(list tape)
  |-
  ?:  =(index (lent sent))
    (weld result ~[sent])
  ?:  =((snag index sent) ' ')
    :: word break
    %=  $
      index   0
      result  (weld result ~[`tape`(scag index sent)])
      sent    `tape`(slag +(index) sent)
    ==
  :: no break, go to next letter
  $(index +(index))
--