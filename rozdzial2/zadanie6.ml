(*Liczbę naturalną nazwiemy rzadką,
*jeżeli w jej zapisie binarnym żadne dwie jedynki
*nie stoją obok siebie. Napisz procedurę rzadkie, która
*dla danej liczby naturalnej n wyznaczy liczbę dodatnich
*liczb rzadkich, które nie przekraczają n
*)

let rec czyRzadka n =
  if (n<3) then true
  else
  (if (((n mod 2)=1) && (((n/2) mod 2)=1)) then false
  else (czyRzadka (n/2)));;

let rec czyRzadkiePom suma a n =
  if (a=(n+1)) then suma
  else
  (if (czyRzadka a) then czyRzadkiePom (suma+1) (a+1) n
  else czyRzadkiePom suma (a+1) n);;

let rzadkie n = czyRzadkiePom 0 1 n;;

exit 0;;