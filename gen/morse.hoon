::  Translate a tape into morse code.
::  https://infogalactic.com/info/Morse_code
::  /hoon/morse/gen
::
!:
|=  phrase=tape
^-  tape
=+  ^=  morse
    |%
    ++  codes
    ^-  (map cord cord)
    %-  my
    :~  :-  'A'  '.- '
        :-  'B'  '-... '
        :-  'C'  '-.-. '
        :-  'D'  '-.. '
        :-  'E'  '. '
        :-  'F'  '..-. '
        :-  'G'  '--. '
        :-  'H'  '.... '
        :-  'I'  '.. '
        :-  'J'  '.--- '
        :-  'K'  '-.- '
        :-  'L'  '.-.. '
        :-  'M'  '-- '
        :-  'N'  '-. '
        :-  'O'  '--- '
        :-  'P'  '.--. '
        :-  'Q'  '--.- '
        :-  'R'  '.-. '
        :-  'S'  '... '
        :-  'T'  '- '
        :-  'U'  '..- '
        :-  'V'  '...- '
        :-  'W'  '.-- '
        :-  'X'  '-..- '
        :-  'Y'  '-.-- '
        :-  'Z'  '--.. '
    ==
    ++  encoder
    |=  letter=cord
    ^-  cord
    (~(got by codes) letter)
--
|-
=.  phrase  (cuss phrase)
%+  turn  phrase
    |=  a=cord
    (encoder.morse a)
