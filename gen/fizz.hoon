=>
|%
++  fizz
|=  end=@ud
=/  count  1
|-
  ^-  (list ?(@ud tape))
  ?:  (gth count end)
     ~
  :-
    ?:  =(0 (mod count 3))
      "Fizz"
    count
$(count (add 1 count))
++  buzz
|=  end=@ud
=/  count  1
|-
  ^-  (list ?(@ud tape))
  ?:  (gth count end)
     ~
  :-
    ?:  =(0 (mod count 5))
      "Buzz"
    count
$(count (add 1 count))
++  fizzbuzz
|=  end=@ud
=/  count  1
|-
  ^-  (list ?(@ud tape))
  ?:  (gth count end)
     ~
  :-
    ?:  =(0 (mod count 15))
      "FizzBuzz"
    ?:  =(0 (mod count 5))
      "Buzz"
    ?:  =(0 (mod count 3))
      "Fizz"
    count
$(count (add 1 count))
--
|=  n=@ud
^-  (list ?(@ud tape))
(fizzbuzz n)
