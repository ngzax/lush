/-  spider, *post, *graph-store, *resource
/+  *strandio, group
=,  strand=strand:spider
=,  dejs-soft:format
=,  strand-fail=strand-fail:libstrand:spider
^-  thread:spider
|^  ted
++  ted
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
=/  [~ limit=@]  !<  [~ @]  arg
  ;<  grup=(unit group:group)  bind:m  (scry (unit group:group) %gx %group-store /groups/ship/(scot %p ~middev)/the-forge/noun)
  =/  group  (need grup)
  =/  ships=(list @p)  (scag limit (flop ~(tap in members.group)))
  ;<  purged=vase  bind:m  (doom ships)
  ;<  =vase  bind:m  (yell !<([@ (list @p)] purged))
  %-  (slog leaf+"processed {<(lent ships)>}" ~)
  (pure:m !>(~))
++  doom
  |=  ships=(list @p)
  =/  m  (strand ,vase)
  ^-  form:m
  =|  purged=@
  =|  rotten=(list @p)
  |-
  =*  loop  $
  ;<  =ship  bind:m  get-our
  ?~  ships
    ?:  (~(has in (sy rotten)) ship)  ~&  >>>  "contains ~middev"  (pure:m !>([purged rotten]))
    ;<  ~  bind:m  %+  poke-our  %group-store  group-update-0+!>([%remove-members home (sy rotten)])
    (pure:m !>([purged rotten]))
  ?:  =(ship i.ships)  loop(ships t.ships)
  ;<  =bowl:spider  bind:m  get-bowl
  ;<  =ship-state:ames  bind:m  (scry ship-state:ames %ax %$ /peers/(scot %p i.ships))
  ?+    -.ship-state  loop(ships t.ships)
      %known
    ?:  (lth last-contact.qos.ship-state (sub now.bowl deth))
       :: ~&  >>>  "{<i.ships>} to be purged"
       loop(ships t.ships, purged +(purged), rotten (snoc rotten i.ships))
    loop(ships t.ships)
  ==
++  yell
    |=  [bans=@ rotten=(list @p)]
    =/  m  (strand ,vase)
    ^-  form:m
    ?~  bans  (pure:m !>(~))
    ;<  =bowl:spider  bind:m  get-bowl
    =/  news
      :~  [%text (crip "**doom-bot** (*deth*: {<deth>}):")]
          [%mention ~middev]
          [%text (crip "the reaper just purged {<bans>} ships. ")]
          [%text (crip "(*dead*: {<bans>}): ")]
          [%text (crip "{<rotten>}")]
       ==
    =/  wired=^path
      [%echo (scot %da now.bowl) (scot %tas /) ~]
    =/  nodes
      %+  ~(put by *(map index node))  ~[now.bowl]
      [[%& [our.bowl ~[now.bowl] now.bowl news ~ ~]] [%empty ~]]
    ~&  >>>  nodes+nodes
    ;<  ~  bind:m
      %+  poke-our  %graph-store
      :-  %graph-update-3
      !>([now.bowl [%add-nodes chan nodes]])
    (pure:m !>(~))
++  home  [~middev %the-forge]
++  chan  [~middev %guild-hall-8426]
++  deth  ~d120
--                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     "monadnock" 15:10 02-Sep-22
