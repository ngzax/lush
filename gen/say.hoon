:-  %say
|=  *
:-  %noun
=<  =~  calc
      (addition 3)
      (addition 6)
      (subtraction 2)
      (multiplication 4)
      (division 2)
      b
  ==
|%
++  calc
  |_  b=@ud
  ++  addition        |=(a=@ud ..addition(b (add b a)))
  ++  division        |=(a=@ud ..division(b (div b a)))
  ++  multiplication  |=(a=@ud ..multiplication(b (mul b a)))
  ++  subtraction     |=(a=@ud ..subtraction(b (sub b a)))
  --
--
