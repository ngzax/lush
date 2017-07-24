:: covfefify a string. a code golf challenge
:: https://codegolf.stackexchange.com/questions/123685/covfefify-a-string?newreg=c6c839fa76a24536bee5119e39b8e6e6
::
:::: /=home=/gen/covfefify.hoon
  ::
/+  string                                              :: include string lib
:-  %say  |=  word/tape                                 :: accepts a single tape
:-  %tape
=<  (covfefify word)
:: |=  word/tape
|%
++  covfefify
  |=  word/tape
::  =/  vowels/list(tape)  ~["a" "e" "i" "o" "u" "y"]
  =/  from/tape          "bcdfgkpstvz"
  =/  to/tape            "pgtvkgbzdfs"
  ^-  tape
  :: =/  result  (find-any:string word vowels)
  from
::
--
