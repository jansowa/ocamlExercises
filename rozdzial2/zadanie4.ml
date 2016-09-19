(*
*Napisz procedurę, która sprawdza, czy dana liczba jest pierwsza.
*)

let rec isPrime1pom a n =
(*    if ((n<4) || (a=n)) then true
	else if (n==1) then false*)
    if n=1 then false
    else if (n<4) || (a=n) then true
    else
    (if ((n mod a)=0) then false
    else isPrime1pom (a+1) n);;

let isPrime1 n = isPrime1pom 2 n;;