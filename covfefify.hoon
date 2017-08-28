/+  string                                              :: include string lib
|=  word/tape                                           :: accepts a single tape
=/  vowels/(list tape)  ~["a" "e" "i" "o" "u" "y"]
=/  from/tape           "bcdfgkpstvz"
=/  to/tape             "pgtvkgbzdfs"
^-  tape
=/  fv      (trim (add i:+<:(find-any:string word vowels) 1) word)
=/  result  (head fv)
result
