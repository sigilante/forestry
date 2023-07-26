  ::  /lib/forestry.hoon
::::  ~lagrev-nocfep
::    Version ~2023.7.26
::
::  Various tools for displaying nouns (binary trees).
::
|%
::  Yield addresses of each value in the given binary tree.
::    [[1 2] [3 4]] -> [[4 5] [6 7]]
++  address
  |=  p=*
  ^-  *
  ?@  p  1
  =/  l  2
  =/  r  3
  |-  ^-  ^
  =/  i  (mul 2 l)
  =/  j  (mul 2 r)
  :-
  ?^  -.p  $(p -.p, l i, r +(i))  l
  ?^  +.p  $(p +.p, l j, r +(j))  r
--
