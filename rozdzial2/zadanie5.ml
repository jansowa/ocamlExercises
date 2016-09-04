(* Liczbę naturalną nazwiemy rzadką,
*jeżeli w jej zapisie binarnym żadne dwie jedynki
*nie stoją obok siebie. Napisz procedurę rzadkie, która dla danej liczby
*naturalnej n zwróci najmniejszą rzadką liczbę
*naturalną większą od n.
*)

let rec czyRzadka n =
  if (n<3) then true
  else
  (if (((n mod 2)=1) && (((n/2) mod 2)=1)) then false
  else (czyRzadka (n/2)));;

let rec rzadkie n =
  if (czyRzadka (n+1)) then (n+1)
  else (rzadkie (n+1));;

exit 0;;