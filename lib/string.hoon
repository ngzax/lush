|%
:: Answer the number of words in a sentence.
::
++  count-elements
  |=  sent=tape
  ^-  @ud
  (lent (split-tape sent))
:: Split a sentence on spaces.
::
++  split-tape
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
