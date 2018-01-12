::
:::: https://pastebin.com/5etXiEv9
  ::
|=  a/*                                                 :: takes a noun
=|  b=(list @)                                          :: returns a flat list of atoms.
%-  flop
|-  ^+  b
?@  a
  [a b]
$(b $(a -.a), a +.a)
