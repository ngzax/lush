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
=/  url  "https://pokeapi.co/api/v2/pokemon/{<id>}"
%+  curl  (scan url auri:de-purl:html)
|=  response=httr:eyre
?~  r.response  !!
=/  my-json  (de-json:html q.u.r.response)
?~  my-json  !!
%+  produce  %json
%.  %name
%~  got  by
%-  (om:dejs:format same)
u.my-json
