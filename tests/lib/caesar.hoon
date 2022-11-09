/+  *test, *caesar2
|%
++  test-shift
  ;:  weld
  %+  expect-eq
    !>  "Spnfp"
    !>  (shift ["Romeo" 1])
  %+  expect-eq
    !>  "Urphr"
    !>  (shift ["Romeo" 3])
  ==
++  test-unshift
  ;:  weld
  %+  expect-eq
    !>  "Romeo"
    !>  (unshift ["Spnfp" 1])
  %+  expect-eq
    !>  "Romeo"
    !>  (unshift ["Urphr" 3])
 ==
++  test-shift-special-chars
  ;:  weld
  %+  expect-eq
    !>  "Urphr/#rk#Urphr$"
    !>  (shift ["Romeo, oh Romeo!" 3])
  %+  expect-eq
    !>  "Romeo, oh Romeo!"
    !>  (unshift ["Urphr/#rk#Urphr$" 3])
  ==
--
