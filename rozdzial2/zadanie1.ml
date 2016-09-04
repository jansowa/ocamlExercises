(*Stopień parzystości liczby całkowitej x, to największa taka liczba naturalna i, że x dzieli się przez 2^i.
*Liczby nieparzyste mają stopień parzystości 0, liczby 2 i -6 mają stopień parzystości 1,
*a liczby 4 i 12 mają stopień parzystości 2.
*Przyjmujemy, że 0 ma stopień parzystości -1.
*
*Napisz procedurę parzystość wyznaczającą stopień parzystości danej liczby całkowitej.
*)

let rec parzystosc x =
if (x=0) then -1
else
(if (x mod 2)=1 then 0
else (1+(parzystosc(x/2))));;
exit 0;;