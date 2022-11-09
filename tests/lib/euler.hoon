/+  *test, *math
|%
++  test-unlucky
  ;:  weld
  %+  expect-eq
    ::  Also prints "That is not a lucky number."
    !>  ~
    !>  (lucky-primes 1)
  ==
++  test-2
  ;:  weld
  %+  expect-eq
    !>  ~[2]
    !>  (lucky-primes 2)
  ==
++  test-3
  ;:  weld
  %+  expect-eq
    !>  ~[3 5]
    !>  (lucky-primes 3)
  ==
++  test-5
  ;:  weld
  %+  expect-eq
    !>  ~[5 7 11 17]
    !>  (lucky-primes 5)
  ==
++  test-11
  ;:  weld
  %+  expect-eq
    !>  ~[11 13 17 23 31 41 53 67 83 101]
    !>  (lucky-primes 11)
  ==
--
