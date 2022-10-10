:: Neighbor gate
:: (accepts the value of a planet as a `@p`
:: and returns the next neighbor, also as a `@p`)
::
::::  hoon/neighbor/gen
  ::
|=  p=@p
^-  @p  `@p`(add 1 `@ud`p)