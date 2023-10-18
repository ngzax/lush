/-  spider                                       :: /sur/spider
/+  strandio                                     :: /lib/strandio
=,  strand=strand:spider
=,  strand-fail=strand-fail:libstrand:spider
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
:: ABOVE THIS LINE IS BOILERPLATE
=/  poke  !<(@tas arg)                    :: re-apply the expected @tas type to the unit arg. call it poke.
?~  poke  (strand-fail %no-pokemon ~)            :: fail if poke is ~
=/  base-url  "https://pokeapi.co/api/v2/pokemon/"
=/  url  (weld base-url (cass (trip poke)))
::
;<  pokeinfo=json  bind:m  (fetch-json:strandio url)
=/  res=(map @tas json)  (malt ~[[poke pokeinfo]])
(pure:m !>(res))
