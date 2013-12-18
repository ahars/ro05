function[n, a1, be] = weibull(n, a1, be)
	n = 100;
	be = 1;
	a1 = 4;
	u - rand(1:n,'uniform');
	x = be * (-log(u)) .^ (1 / a1);
	x1 = -sort(-x(:)); // tri croissant
	yemp = (1:n)' / n; // Fonction de répartition empirique
	xbasc();
	plot2d(x1, yemp);
	x2 = linspace(min(x1), max(x1), n); // contrôle les valeurs extrèmes et le nombre d'observations
	fdr = 1 - exp(-(x2 ./ be) .^ (a1));
	plot2d(x2, fdr);
endfunction
