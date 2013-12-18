// bino2.sci

clear;
rand("uniform");


// nombre de tirages
K = 1600;   
           
// parametres de la loi binomiale
N = 10;
p = 0.25;


clf;
xtitle( "Histogramme: loi binomiale de parametres " + .. 
        string(N) + " et " + string(p) + ..
        ".  Nombre de simulations : " + string(K) ) ;


// subdivision
s = -0.5:N+0.5;

// NxK v.a. de Bernoulli de param. p
bernou = double( rand(N,K) < p );

// K sommes de N v.a. de Bernoulli
binomi = sum( bernou, 'r' );

histplot(s, binomi);


// espace des valeurs
F = 0:N;

// loi binomiale
lb = zeros(1,N+1);   
lb(1) = 1;
for n  = 1:N
    // adaptation du triangle de Pascal
    lb = lb*(1-p) + [0, lb(1:$-1)]*p;
end

plot2d3(F, lb, 5);


