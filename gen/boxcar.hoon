::
:::: Boxcar gate
:::: (true if 3 < x <= 5)
  ::
|=  x=@ud
^-  @ud
?:  (gth x 3)
  ?:  (lte x 5)
    1
  0
0
