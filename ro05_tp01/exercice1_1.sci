function[emp] = emp(n, u)
	x = log(u); // génère échantillon des xi à partir des ui
	x1 = -sort(-x(:)); // ordonne de façon croissante
	y = (1 / n)' / n;
	xbasc();
	plot2d(x1, y); // dessin de la fonction empirique
	x2 = maxlinspace(min(x1), max(x1), n)'; // abscisse fonction exacte
	plot2d2(x2, exp(x2)) // superpose F exacte à F empirique
endfunction

