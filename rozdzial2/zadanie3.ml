(*Sumy kolejnych liczb nieparzystych dają kwadraty kolejnych liczb naturalnych.
*Wykorzystaj ten fakt do napisania procedury sqrt obliczającej sqrt x = podloga(pierwiastek x)
*i nie korzystającej z mnożenia, ani dzielenia.
*)

let rec sqrtpom sum k x =
  if (sum>x) then (k-2)
  else
  sqrtpom (sum+(k+k-1)) (k+1) x;;

let sqrt x = sqrtpom 0 1 x;;

exit 0;;