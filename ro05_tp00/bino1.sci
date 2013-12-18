// bino1.sci
clear;


function loi = loiBinomiale(n,p)
    loi = zeros(1,n+1);
    for n1 = 0:n
        Combi = prod(n-n1+1:n)/prod(1:n1);
        loi(n1+1) = Combi * p^n1 * (1-p)^(n-n1);
    end
endfunction


function S = simBinomiale(n,p)
    S = 0;
    for k = 1:n
        U = rand();
        if  ( U < p )
            S = S + 1;
        end
    end
endfunction


// nombre de tirages
K = 1600;

// parametres de la loi binomiale
N = 10;
p = 0.25;


// initiation graphique
clf;
xtitle( "Histogramme: loi binomiale de parametres " + .. 
        string(N) + " et " + string(p) + ..
        ".  Nombre de simulations : " + string(K) ) ;


F = 0:N;
lb = loiBinomiale(N,p);
plot2d3(F, lb, 5);


// subdivision
s = -0.5:N+0.5;

// K tirages
data = zeros(1,K);
for k = 1:K
    data(k) = simBinomiale(N,p);
end
histplot(s, data);
