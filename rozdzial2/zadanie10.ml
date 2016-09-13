let rec pierwiastkiPom a n =
    if ( a=(n-1) ) then false
    else
	(if (((a*a) mod n)=1) then  true
	else pierwiastkiPom (a+1) n);;

let pierwiastki n = pierwiastkiPom 2 n;;