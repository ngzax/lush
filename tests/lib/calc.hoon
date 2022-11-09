/+  *test, *math
|%
++  test-add
  ;:  weld
  %+  expect-eq
    !>  5
    !>  (~(addition calc 1) 4)
  %+  expect-eq
    !>  155
    !>  (~(addition calc 100) 55)
  %+  expect-eq
    !>  5
    !>  (~(addition calc 4) 1)
  ==
++  test-sub
  ;:  weld
  %+  expect-eq
    !>  0
    !>  (~(subtraction calc 0) 0)
  %+  expect-eq
    !>  1
    !>  (~(subtraction calc 11) 10)
  %-  expect-fail
    |.  (~(subtraction calc 0) 1)
  ==
++  test-mul
  ;:  weld
  %+  expect-eq
    !>  0
    !>  (~(multiplication calc 0) 0)
  %+  expect-eq
    !>  144
    !>  (~(multiplication calc 12) 12)
  %+  expect-eq
    !>  1.440
    !>  (~(multiplication calc 120) 12)
  ==
++  test-div
  ;:  weld
  %+  expect-eq
    !>  0
    !>  (~(division calc 0) 1)
  %+  expect-eq
    !>  1
    !>  (~(division calc 12) 12)
  %+  expect-eq
    !>  10
    !>  (~(division calc 120) 12)
  ==
++  test-cant-divide-by-zero
  ;:  weld
  %-  expect-fail
    |.  (~(division calc 3) 0)
  ==
:: ++  test-cant-divide-to-fraction
::   ;:  weld
::   %-  expect-fail
::     |.  (~(division calc 12) 120)
::   ==
--