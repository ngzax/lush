|=  length-of-list=@
=/  ultimate-number=@  1
=/  penultimate-number=@  1
^-  (list @)
:-  ultimate-number
|-
?:  =(length-of-list 0)
  ~
:-  ultimate-number
$(length-of-list (dec length-of-list), ultimate-number (add ultimate-number penultimate-number), penultimate-number ultimate-number)
