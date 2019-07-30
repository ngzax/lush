::  LiSt directory subnodes
::
::::  /hoon/ls/gen
  ::
/?    310
/+    show-dir
::
::::
  ::
~&  %
:-  %say
|=  {^ {arg/path filter/tape ~} vane/?($g $c)}
:: |=  [^ [[arg=path filter=tape] ~] vane/?($g $c)]
=/  cat-vane  (cat 3 vane %y)
=/  lon  .^(arch cat-vane arg)
~&  %arg
~&  arg
tang+[?~(dir.lon leaf+"~" (show-dir vane arg dir.lon))]~
