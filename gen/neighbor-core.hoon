:: Neighbor Finder
:: (accepts the value of a planet as a `@p`
:: and returns either the next or previous neighbor, also as a `@p`)
::
::::  hoon/neighbor/gen
  ::
|=  [n=@ud p=@p]
^-  @p
=<
?:  (lte 1 n)
  (next p)
(prev p)
|%                      :: barcen - start a generic Core
++  next                :: named arm
  |=  p=@p              :: gate
  ^-  @p                :: return type
  `@p`(add 1 `@ud`p)
++  prev                :: named arm
  |=  p=@p              :: gate
  ^-  @p                :: return type
  `@p`(sub `@ud`p 1)
--                      :: hephep - Close the Core
