/-  charlie
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
|_  =bowl:gall
+*  this      .
    default   ~(. (default-agent this %|) bowl)
    main      ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  '%charlie initialized successfully'
  =.  state  [%0 *(list @ux)]
  `this
++  on-save   on-save:default
++  on-load   on-load:default
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  (on-poke:default mark vase)
      %noun
    ?+    q.vase  (on-poke:default mark vase)
        %print-state
      ~&  >>  state
      ~&  >>>  bowl
      `this
      ::
        [%push-local @ux]
      ~&  >  "got poked from {<src.bowl>} with val: {<+.q.vase>}"
      =^  cards  state
      (handle-action:main !<(action:charlie vase))
      [cards this]
      ::
        [%pop-local ~]
      ~&  >  "got poked from {<src.bowl>} with val: {<+.q.vase>}"
      =^  cards  state
      (handle-action:main !<(action:charlie vase))
      [cards this]
    ==
    ::
      %charlie-action
    ~&  >  %charlie-action
    =^  cards  state
    (handle-action:main !<(action:charlie vase))
    [cards this]
  ==
++  on-arvo   on-arvo:default
++  on-watch  on-watch:default
++  on-leave  on-leave:default
++  on-peek
  |=  =path
  ^-  (unit (unit cage))
  ?+    path  (on-peek:default path)
      [%x %hexes ~]
    ``noun+!>(hexes)
  ==
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--
|_  =bowl:gall
++  handle-action
  |=  =action:charlie
  ^-  (quip card _state)
  ?-    -.action
    ::
      %push-remote
    :_  state
    ~[[%pass /poke-wire %agent [target.action %charlie] %poke %charlie-action !>([%push-local value.action])]]
    ::
      %push-local
    =.  hexes.state  (weld hexes.state ~[value.action])
    ~&  >>  hexes.state
    :_  state
    ~[[%give %fact ~[/hexes] [%atom !>(hexes.state)]]]
    ::
      %pop-remote
    :_  state
    ~[[%pass /poke-wire %agent [target.action %charlie] %poke %charlie-action !>(~[%pop-local])]]
    ::
      %pop-local
    =.  hexes.state  (snip hexes.state)
    ~&  >>  hexes.state
    :_  state
    ~[[%give %fact ~[/hexes] [%atom !>(hexes.state)]]]
  ==
--
