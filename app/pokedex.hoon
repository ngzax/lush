::
:::: Pokemon Fetcher
  :: Built for App School Lesson 5 Oct. 2023
  ::
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
++  on-init
  ^-  (quip card _this)
  ~&  >  '%pokedex initialized successfully'
  =.  state  [%0 *(map @tas json)]
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  [~ this(state !<(versioned-state old-state))]
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark
      (on-poke:def-agent mark vase)  :: Default -> Pass unexpected marks to default-agent, which just crashes
    %noun
      ?+  q.vase
          (on-poke:def-agent mark vase)
        (pair term term)
          =/  tid         `@ta`(cat 3 'thread_' (scot %uv (sham eny.bowl)))
          =/  ta-now      `@ta`(scot %da now.bowl)
          =/  pok         q.q.vase  :: The name of the pokemon to retrieve
          =/  start-args  [~ `tid byk.bowl(r da+now.bowl) p.q.vase !>(pok)]
          =/  cache-jsn  (~(get by pokemons.state) pok)
          ?~  cache-jsn
            :: the pokemon was not in the cache, retrieve it...
            :-
              :~
                [%pass /thread/[ta-now] %agent [our.bowl %spider] %watch /thread-result/[tid]]
                [%pass /thread/[ta-now] %agent [our.bowl %spider] %poke %spider-start !>(start-args)]
              ==
            this
          :: the pokemon was in the cache, return it.
          =/  jsnt  (en-json:html (need cache-jsn))
          ~&  >  "Pokemon JSON: {jsnt}"
          `this
      ==
  ==
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+  -.wire
      (on-agent:def-agent wire sign)
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
          =/  res             !<  (map @tas json)  q.cage.sign
          =/  pok             `@tas`(head (scag 1 ~(tap in ~(key by res))))
          =/  jsn             `json`(head (scag 1 ~(val by res)))
          :: Put the return json into our cache.
          =.  pokemons.state  `(map @tas json)`(~(put by pokemons.state) pok jsn)
          =/  jsnt            (en-json:html jsn)
          %-  (slog leaf+"Pokemon JSON: {jsnt}" ~)
          `this
        ==
    ==
  ==
++  on-watch  on-watch:def-agent
++  on-leave  on-leave:def-agent
++  on-peek   on-peek:def-agent
++  on-arvo   on-arvo:def-agent
++  on-fail   on-fail:def-agent
--
