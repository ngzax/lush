!:
|%
++  ranks
  ^-  (list @tas)
  :~  %ace
      %two
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
  ==
++  suits
  ^-  (list @tas)
  :~  %clubs
      %diamonds
      %hearts
      %spades
  ==
++  deal-card
  |=  [a=@ud b=@ud]
  ^-  tape
  "{<(snag a ranks)>} of {<(snag b suits)>}"
++  deal-hand
  |=  [y=@ud eny=@uv]
  ^-  (list tape)
  =/  count=@  1
  =/  rng  ~(. og eny)
  |-
  =^  rank-val  rng  (rads:rng (lent ranks))
  =^  suit-val  rng  (rads:rng (lent suits))
  ?:  =(y (dec count))
    ~
  :-  (deal-card rank-val suit-val)
  $(count (add 1 count))
--
:-  %say
|=  [[* eny=@uv *] [[x=@ y=@] ~] *]
:-  %noun
^-  (list (list tape))
=/  count=@  1
|-
=.  eny  (add eny 1)
?:  =(x (dec count))
  ~
:-  (deal-hand y eny)
$(count (add 1 count))
