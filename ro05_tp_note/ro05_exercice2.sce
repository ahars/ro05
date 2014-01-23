// RO05 - tp noté
// Antoine Hars
// Exercice 2

/////////////////////////////////////////////////////////////////////

// 1.

// p = 0.4
n0 = 1000;
p = 0.4;

x1 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x2 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x3 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x4 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);

S1 = [0,cumsum(x1)];
S2 = [0,cumsum(x2)];
S3 = [0,cumsum(x3)];
S4 = [0,cumsum(x4)];

x = 0:n0;
plot2d(x, S1, 1)
plot2d(x, S2, 2)
plot2d(x, S3, 3)
plot2d(x, S4, 4)
legend("trajectoire 1","trajectoire 2","trajectoire 3","trajectoire 4")
xtitle("Simulation de la marche aléatoire Sn = sum(X) pour p = " + string(p), "n", "Sn")
xs2jpg(gcf(), 'exercice2_plot1.jpg');

/////////////////////////////////////////////////////////////////////

// p = 0.5
n0 = 1000;
p = 0.5;

S0 = 0;

x1 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x2 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x3 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
x4 = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);

S1 = [0,cumsum(x1)];
S2 = [0,cumsum(x2)];
S3 = [0,cumsum(x3)];
S4 = [0,cumsum(x4)];

S1 = [0,S1];
S2 = [0,S2];
S3 = [0,S3];
S4 = [0,S4];

x = 0:n0;
plot2d(x, S1, 1)
plot2d(x, S2, 2)
plot2d(x, S3, 3)
plot2d(x, S4, 4)
legend("trajectoire 1","trajectoire 2","trajectoire 3","trajectoire 4")
xtitle("Simulation de la marche aléatoire Sn = sum(X) pour p = " + string(p), "n", "Sn")
xs2jpg(gcf(), 'exercice2_plot2.jpg');

// On rappelle qu'on point x de E est dit récurrent si pour X0 = x, la probabilité qu'il existe n strictement positif tel que Xn = x vaut 1. Dans ce cas, la chaîne passe presque sûrement par x une infinité de fois. Dans le cas contraîre, x est transitoire ou transient.

// La chaine pour p = 0.5 semble récurrente alors que la chaine pour p = 0.4 semble transiente.

/////////////////////////////////////////////////////////////////////

// 2.

// p = 0.4
n0 = 1000;
p = 0.4;
N = 1000;

tp = [];
for j = 1:N
  x = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
  S = cumsum(x);
  count = sum(S == 0);
  tp = [tp,count];
end

histplot(round(N / 20), tp)
xtitle("Histogramme de la loi du temps passé en 0 pour p = " + string(p), "n","Sn")
xs2jpg(gcf(), 'exercice2_histogramme1.jpg');

/////////////////////////////////////////////////////////////////////

// p = 0.5
n0 = 1000;
p = 0.5;
N = 1000;

tp = [];
for j = 1:N
  x = 2 * (rand(1, n0) < (p * ones(1, n0))) - ones(1, n0);
  S = cumsum(x);
  count = sum(S == 0);
  tp = [tp,count];
end

histplot(round(N / 20), tp)
xtitle("Histogramme de la loi du temps passé en 0 pour p = " + string(p), "n","Sn")
xs2jpg(gcf(), 'exercice2_histogramme2.jpg');

/////////////////////////////////////////////////////////////////////

