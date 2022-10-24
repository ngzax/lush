|%
::
::  Shift a message to the right.
::
++  shift
  |=  [message=tape steps=@ud]
  ^-  tape
  %+  turn  message
  |=  a=@t
  (encode [a steps])
::
::  Shift a message to the left.
::
++  unshift
  |=  [message=tape steps=@ud]
  ^-  tape
  %+  turn  message
  |=  a=@t
  (decode [a steps])
::
:: Rotate forwards into encryption.
::
++  encode
  |=  [char=@t steps=@ud]
  ^-  @t
  `@t`(add steps `@ud`char)
::
::  Rotate backwards out of encryption.
::
++  decode
  |=  [char=@t steps=@ud]
  ^-  @t
  `@t`(sub `@ud`char steps)
--
