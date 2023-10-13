/-  pokedex
/+  default-agent, dbug
::
|%
+$  versioned-state
  $%  state-0
  ==
::
+$  state-0
  $:  [%0 pokemons=(map @tas json)]
  ==
+$  card  card:agent:gall
--
::
%-  agent:dbug
::
=|  state-0
=*  state  -
::
^-  agent:gall
|_  =bowl:gall
:: create a ref to the default agent
+*  this  .  def-agent
  ~(. (default-agent this %|) bowl)
::
:: ++  on-init   on-init:def-agent
++  on-init
  ^-  (quip card _this)
  ~&  >  '%pokedex initialized successfully'
  =.  state  [%0 *(map @tas json)]
  `this
::
++  on-save   on-save:def-agent
:: ++  on-save  !>(state)
::
++  on-load   on-load:def-agent
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+    mark  (on-poke:def-agent mark vase)
      %noun
    ?+  q.vase  (on-poke:def-agent mark vase)
        (pair term term)
      =/  tid         `@ta`(cat 3 'thread_' (scot %uv (sham eny.bowl)))
      =/  ta-now      `@ta`(scot %da now.bowl)
      =/  start-args  [~ `tid byk.bowl(r da+now.bowl) p.q.vase !>(q.q.vase)]
      :-
        :~
          [%pass /thread/[ta-now] %agent [our.bowl %spider] %watch /thread-result/[tid]]
          [%pass /thread/[ta-now] %agent [our.bowl %spider] %poke %spider-start !>(start-args)]
        ==
      this
    ==
  ==
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+  -.wire  (on-agent:def-agent wire sign)
    %thread
      ?+  -.sign  (on-agent:def-agent wire sign)
        %poke-ack
          ?~  p.sign
            %-  (slog leaf+"Thread started successfully" ~)
          `this
          %-  (slog leaf+"Thread failed to start" u.p.sign)
          `this
     ::
    %fact
      ?+  p.cage.sign  (on-agent:def-agent wire sign)
        %thread-fail
          =/  err  !<  (pair term tang)  q.cage.sign
          %-  (slog leaf+"Thread failed: {(trip p.err)}" q.err)
          `this
        %thread-done
          =/  res       !<(json q.cage.sign)
          =/  jsn       (en-json:html res)
          =.  pokemons.state  `(map @tas json)`(~(put by pokemons.state) %test res)
          %-  (slog leaf+"Result JSON: {jsn}" ~)  `this
        ==
    ==
  ==
++  on-watch  on-watch:def-agent
++  on-leave  on-leave:def-agent
++  on-peek   on-peek:def-agent
++  on-arvo   on-arvo:def-agent
++  on-fail   on-fail:def-agent
--
