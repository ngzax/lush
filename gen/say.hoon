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
  +*  this  .
  ++  addition        |=(a=@ud this(b (add b a)))
  ++  division        |=(a=@ud this(b (div b a)))
  ++  multiplication  |=(a=@ud this(b (mul b a)))
  ++  subtraction     |=(a=@ud this(b (sub b a)))
  --
--
