function[n] = cauchy(n)
	i = 1:n; // tail de l'échantillon
	u = rand(i, 'uniform');
	x = tan(%i .* (u - 0.5)); // échantillon loi de Cauchy
	S = cumsum(x);
	y = S ./ i; // vecteur de composants Si / i
	xbasc();
	plot2d(i', y', 2); // ligne polygonale de sommets (i, Si / i) en bleu
	xsegs([0 n], [0 0], 5); // trace en rouge l'axe des abscisses.
endfunction
