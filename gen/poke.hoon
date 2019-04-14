::  Include external libs
::
/-  sole
/+  generators
=,  generators
::
::  Get generator which takes a single integer for the Pokemon's id
::
:-  %get
|=  [* [id=@ud ~] ~]
::  and return a json cask with the pokemon's name
::
^-  (sole-request:sole (cask json))
:: ^-  cord
=/  url  "https://pokeapi.co/api/v2/pokemon/{<id>}"
%+  curl  (scan url auri:de-purl:html)
|=  hit/httr:eyre
?~  r.hit  !!
=/  my-json  (de-json:html q.u.r.hit)
?~  my-json  !!
=,  dejs:format
%+  produce  %json
%.  %weight
%~  got  by
%-  (om same)
u.my-json
