|=  n=@ud
^-  tape
=<
~(ram re [%rose ["|" "(" ")"] (fizzbuzz n)])
|%
++  fizzer
|=  n=@ud
^-  tank
|-
?:  =(0 (mod n 15))
  leaf+"FizzBuzz"
?:  =(0 (mod n 5))
  leaf+"Buzz"
?:  =(0 (mod n 3))
  leaf+"Fizz"
leaf+(scow %ud n)
++  fizzbuzz
|=  end=@ud
^-  (list tank)
=/  count   1
=/  result  *(list tank)
|-
?:  (gth count end)
  result
%=  $
  result  (weld result ~[(fizzer count)])
  count   (add 1 count)
==
--
