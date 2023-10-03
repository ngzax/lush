/-  spider
=,  strand=strand:spider
^-  thread:spider
|=  arg=vase
=/  m  (strand ,vase)
^-  form:m
|=  strand-input:strand
?+    q.arg  [~ %fail %wasnt-foo ~]
    %foo
  [~ %done arg]
==
