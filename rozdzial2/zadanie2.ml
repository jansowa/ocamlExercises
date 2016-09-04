(*Napisz procedurę, która przekształca daną liczbę naturalną w taką,
*w której cyfry występują w odwrotnej kolejności,
*np. 1234 jest przekształcane na 4321. 
*)

let rec reversepom a x =
  if (x<10) then ((10*a)+x)
  else
  reversepom ((10*a)+(x mod 10)) (x/10);;

let reverse x = reversepom 0 x;;

exit 0;;