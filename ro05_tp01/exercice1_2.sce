// simulation de loi de Poisson de paramètre 3
n = 7;
u = exp(-3); // p(0)
for i = 1:n
	p(i) = exp(-3) * 3^i / prod(1:i);
end
P = [u p'] // tableau des valeurs de probas
F = cumsum(P) // cdf associées

// simulation de va
Fmax = F(n + 1);
// Pmax = F(n + 1) - F(n);
x = zeross(1, 200);
for i = 1:200
	choix(i) = rand();
	if choix(i) <= Fmax then
		s = 0;
		r = 1;
		while choix(i) > F(r)
			r = r + 1;
			s = s + 1;
		end
	end
	x(i) = s;
end
