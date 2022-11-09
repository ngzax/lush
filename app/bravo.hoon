/-  bravo
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
::
+$  state-0
  $:  [%0 hexes=(list @ux)]
  ==
::
+$  card  card:agent:gall
::
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
=<
|_  bowl:gall
+*  this      .
    default   ~(. (default-agent this %|) bowl)
    main      ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  '%bravo initialized successfully'
  =.  state  [%0 *(list @ux)]
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  ~&  >  '%bravo recompiled successfully'
  `this(state !<(versioned-state old-state))
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  (on-poke:default mark vase)
      %noun
    ?+    q.vase  (on-poke:default mark vase)
        %print-state
      ~&  >>  state
      ~&  >>>  bowl  `this
        [%print-pop @ux]
      ~&  >>  +>:vase  `this
    ==
    ::
      %bravo-action
    ~&  >  %bravo-action
    =^  cards  state
    (handle-action:main !<(action:bravo vase))
    [cards this]
  ==
::
++  on-watch
  |=  =path
  `this
::
++  on-leave
  |=  =path
  `this
::
++  on-peek
  |=  =path
  *(unit (unit cage))
::
++  on-agent
  |=  [wire sign:agent:gall]
  `this
::
++  on-arvo
  |=  [=wire =sign-arvo]
  `this
::
++  on-fail
  |=  [=term =tang]
  `this
--
|_  =bowl:gall
++  handle-action
  |=  =action:bravo
  ^-  (quip card _state)
  ?-    -.action
    ::
      %push
    =.  hexes.state  (weld hexes.state ~[value.action])
    ~&  >>  hexes.state
    :_  state
    ~[[%give %fact ~[/hexes] [%atom !>(hexes.state)]]]
    ::
      %pop
    =/  popped  (rear hexes.state)
    =.  hexes.state  (snip hexes.state)
    ~&  >>  hexes.state
    :_  state
    :~  [%give %fact ~[/hexes] [%atom !>(hexes.state)]]
        [%pass /print-pop %agent [our.bowl %bravo] %poke %noun !>([%print-pop popped])]
    ==
  ==
--
