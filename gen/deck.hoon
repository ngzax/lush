|=  *
=|  deck=(list [@tas @tas])
=/  ranks=(list @tas)
  :~  %two
      %three
      %four
      %five
      %six
      %seven
      %eight
      %nine
      %ten
      %jack
      %queen
      %king
      %ace
  ==
=/  suits=(list @tas)
  ~[%spades %diamonds %clubs %hearts]
|-
^-  (list [@tas @tas])
?~  suits
  deck
%=  $
  suits  t.suits
  deck  |-
          ^-  (list [@tas @tas])
          ?~  ranks
            deck
          [[i.ranks i.suits] $(ranks t.ranks)]
==
