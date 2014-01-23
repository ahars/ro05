// RO05 - tp noté
// Antoine Hars
// Exercice 4

/////////////////////////////////////////////////////////////////////

p = 0.3;
q = 0.4;
r = 1 - (p + q);
c = 20;
n0 = 10000;

x = 0;
S = [x];

for i = 1:n0
  proba = x;
  if proba == 0 then
    x = 1 - (rand() < q);
  else
    if proba == c then
      x = c - (rand() > q);
    else
      proba = rand();
      if proba < p then
        x = x - 1;
      else
        if proba > p + q then
          x = x + 1;
        end
      end
    end
  end
  S = [S, x];
end

H = [];
for i = 0:c,
  H = [H, sum(S == i) / (n0 + 1)];
end

x = 0:c;
plot2d(x, H, 2)
xtitle("Histogramme de la loi invariante, p = " + string(p) + ", q = " + string(q) + " et r = 1 - (p + q)", "espace états", "fréquence apparition des états")
xs2jpg(gcf(), 'exercice4_histogramme.jpg');

/////////////////////////////////////////////////////////////////////

