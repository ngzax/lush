/+  string                                              :: include string lib
::::::
:: Find the first vowel in a word
::
|=  word/tape
^-  @
=/  vowels/(list tape)  ~["a" "e" "i" "o" "u" "y"]
=/  res  (find-any:string word vowels)
?~  res  !!                                             ::  none found? crash.
i.u.res                                                 ::  get at i (the position) from the unit value of the result
