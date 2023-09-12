/-  todo
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =friends:todo =tasks:todo]
+$  card  card:agent:gall
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
::
++  on-init
  ^-  (quip card _this)
  `this
::
++  on-save
  ^-  vase
  !>(state)
::
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state old-state)
  ?-  -.old
    %0  `this(state old)
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  |^
  ?>  =(src.bowl our.bowl)                                       :: Only allow pokes from the Local ship
  ?+    mark  (on-poke:def mark vase)
      %todo-action
    =^  cards  state
      (handle-poke !<(action:todo vase))
    [cards this]
  ==
  ++  handle-poke
    |=  =action:todo
    ^-  (quip card _state)
    ?-    -.action
        %add
      ?:  (~(has by tasks) now.bowl)                             :: check if there's already an entry in the tasks map with the current date-time
        $(now.bowl (add now.bowl ~s0..0001))                     :: if there is, we increase the time by a fraction of a second and try again.
                                                                 :: (Since we're using now.bowl for the task ID)
      :_  state(tasks (~(put by tasks) now.bowl [name.action %.n]))
      :~  :*  %give  %fact  ~[/updates]  %todo-update
              !>(`update:todo`[%add now.bowl name.action])
          ==
      ==
    ::
        %del
      :_  state(tasks (~(del by tasks) id.action))
      :~  :*  %give  %fact  ~[/updates]  %todo-update
              !>(`update:todo`action)
          ==
      ==
    ::
        %toggle
      :-  :~  :*  %give  %fact  ~[/updates]  %todo-update
              !>(`update:todo`action)
          ==  ==
      %=  state
        tasks  %+  ~(jab by tasks)
                 id.action
               |=(=task:todo task(done !done.task))
      ==
    ::
        %rename
      :-  :~  :*  %give  %fact  ~[/updates]  %todo-update
              !>(`update:todo`action)
          ==  ==
      %=  state
        tasks  %+  ~(jab by tasks)
                 id.action
               |=(=task:todo task(name name.action))
      ==
        %allow
      `state(friends (~(put in friends) who.action))
    ::
        %kick
      :_  state(friends (~(del in friends) who.action))
      :~  [%give %kick ~[/updates] `who.action]
      ==
    ==
  --
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?+    path  (on-watch:def path)
      [%updates ~]
    ?>  (~(has in friends) src.bowl)                             :: checks whether the requesting ship is in the friends set, and crashes if it is not.
    :_  this
    :~  [%give %fact ~ %todo-update !>(`update:todo`initial+tasks)] :: If they're in friends, it produces a %fact card with a null (list path)
    ==                                                              :: which means it goes only to the new subscriber.
  ==                                                                :: This %fact contains the entire tasks map as it currently exists, getting the new subscriber up to date.
::
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent  on-agent:def
++  on-arvo   on-arvo:def
++  on-fail   on-fail:def
--
