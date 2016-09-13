let rec potegowaniePom ret x y = (* x^y *)
    if (y=1) then (ret*x)
    else
	(potegowaniePom (ret*x) x (y-1) );;

let potegowanie x y = potegowaniePom 1 x y;;