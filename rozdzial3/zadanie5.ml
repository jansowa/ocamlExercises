(*
*Napisz procedurę zeraSilni, która dla danej dodatniej liczby całkowitej n
*obliczy ile zer znajduje się na końcu zapisu dziesiętnego liczby n!
*)

let rec zeraSilniPom dzielnik suma n =
	if (dzielnik>n) then suma
	else 
	zeraSilniPom (dzielnik*5) (suma+(n/dzielnik)) n;;

let zeraSilni n = zeraSilniPom 5 0 n;;

exit 0;;
