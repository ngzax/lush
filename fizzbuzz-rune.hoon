|=  end/atom                                            ::  1
=/  count  1                                            ::  2
|-                                                      ::  3
  ^-  (list tape)                                       ::  4
  ?:  =(end count)                                      ::  5
     ~                                                  ::  6
  :-                                                    ::  7
    ?:  =(0 (mod count 15))                             ::  8
      "FizzBuzz"                                        ::  9
    ?:  =(0 (mod count 5))                              ::  10
      "Fizz"                                            ::  11
    ?:  =(0 (mod count 3))                              ::  12
      "Buzz"                                            ::  13
    (pave !>(count))                                    ::  14
$(count (add 1 count))                                  ::  15

