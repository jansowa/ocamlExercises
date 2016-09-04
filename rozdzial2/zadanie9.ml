(*Zaimplementuj kodowanie par liczb naturalnych jako liczby naturalne.
*To znaczy, napisz procedurę dwuargumentową,
*która koduje dwie liczby dane jako argumenty w jednej
*liczbie naturalnej. Dodatkowo napisz dwie procedury,
*które wydobywają z zakodowanej pary odpowiednio
*pierwszą i drugą liczbę.
*)

let rec sqrtpom sum k x =
  if (sum>x) then (k-2)
  else
  sqrtpom (sum+(k+k-1)) (k+1) x;;

let sqrt x = sqrtpom 0 1 x;;

let cantorPairingFunc x y =
  (((x+y)*(x+y+1))/2)+y;;

let decodeSecondNumber z =
  let w = (sqrt (8*z+1)-1)/2
  in
    (let t = (w*w + w)/2
    in
      z-t);;

let decodeFirstNumber z =
  let w = (sqrt (8*z+1)-1)/2
  in
    (let t = (w*w + 3*w)/2
    in
      t-z);;

exit 0;;