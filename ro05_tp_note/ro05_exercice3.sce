// RO05 - tp noté
// Antoine Hars
// Exercice 3

/////////////////////////////////////////////////////////////////////

// 1.
// Une chaine est irréductible si pour tout x et y appartenant à l'espace d'états, nous avons une probabilité non nulle qu'il existe un n tel que Xn = y avec dans notre cas X0 = 0.

/////////////////////////////////////////////////////////////////////

// 2.
N = 5;
n0 = 200;
p = 1 / 2;
c = 50;

q = 0;
S1 = [0];
S2 = [0];
S3 = [0];
S4 = [0];
S5 = [0];

for i = 1:n0
  if q == 0 then
    q = 1;
  else
    if q == c then
      q = c - 1;
    else
      q = q + 2 * (rand() < p) - 1;
    end
  end
  S1 = [S1, q];
end

for i = 1:n0
  if q == 0 then
    q = 1;
  else
    if q == c then
      q = c - 1;
    else
      q = q + 2 * (rand() < p) - 1;
    end
  end
  S2 = [S2, q];
end

for i = 1:n0
  if q == 0 then
    q = 1;
  else
    if q == c then
      q = c - 1;
    else
      q = q + 2 * (rand() < p) - 1;
    end
  end
  S3 = [S3, q];
end

for i = 1:n0
  if q == 0 then
    q = 1;
  else
    if q == c then
      q = c - 1;
    else
      q = q + 2 * (rand() < p) - 1;
    end
  end
  S4 = [S4, q];
end

for i = 1:n0
  if q == 0 then
    q = 1;
  else
    if q == c then
      q = c - 1;
    else
      q = q + 2 * (rand() < p) - 1;
    end
  end
  S5 = [S5, q];
end

x = 0:n0;
plot2d(x, S1, 2)
plot2d(x, S2, 3)
plot2d(x, S3, 4)
plot2d(x, S4, 5)
plot2d(x, S5, 6)

legend("trajectoire 1","trajectoire 2","trajectoire 3","trajectoire 4","trajectoire 5")
xtitle("Simulation de la marche aléatoire strictement positive entre 0 et c = 50, p = " + string(p), "n", "espace états")
xs2jpg(gcf(), 'exercice3_plot.jpg');

/////////////////////////////////////////////////////////////////////

// 3.

// On prend la première simulation S1.

H = [];
for i = 0:c,
  H = [H, sum(S1 == i) / (n0 + 1)];
end

x = 0:c;
plot2d(x, H, 2)
xtitle("Histogramme de la loi invariante, p = " + string(p), "espace états", "fréquence apparition des états")
xs2jpg(gcf(), 'exercice3_histogramme.jpg');

/////////////////////////////////////////////////////////////////////

