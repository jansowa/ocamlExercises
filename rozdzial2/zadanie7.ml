(*Napisz procedurę, która sprawdza,
*czy dana liczba jest podzielna przez 9
*w następujący sposób: jedyne liczby jednocyfrowe
*podzielne przez 9 to 9 i 0;
*reszta z dzielenia liczby wielocyfrowej przez 9 
*jest taka sama, jak reszta z dzielenia sumy jej
*cyfr przez 9; jeśli suma cyfr jest wielocyfrowa,
*to całość powtarzamy, aż do uzyskania liczby jednocyfrowej.
*)

let rec sumaCyfrPom sum n =
  if (n<10) then (sum+n)
  else sumaCyfrPom (sum+(n mod 10)) (n/10);;

let sumaCyfr n = sumaCyfrPom 0 n;;

let rec ostatecznaSumaCyfr n =
  if (n<10) then n
  else ostatecznaSumaCyfr (sumaCyfr n);;

let czyPodzielna9 n =
  let pom = (ostatecznaSumaCyfr n)
  in
   if (pom=9 || pom=0) then true
   else false;;

exit 0;;