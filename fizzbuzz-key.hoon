:gate  end/atom                                         ::  1
:var   count  1                                         ::  2
:loop                                                   ::  3
:cast  (list tape)                                      ::  4
:if  =(end count)                                       ::  5
   ~                                                    ::  6
:cons                                                   ::  7
  :if  =(0 (mod count 15))                              ::  8
    "FizzBuzz"                                          ::  9
  :if  =(0 (mod count 5))                               ::  10
    "Fizz"                                              ::  11
  :if  =(0 (mod count 3))                               ::  12
    "Buzz"                                              ::  13
  (pave :wrap(count))                                   ::  14
:moar(count (add 1 count))                              ::  15

