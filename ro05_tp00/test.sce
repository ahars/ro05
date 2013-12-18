clear;
n = 600;
m = 500;
p = 1 / 200;
rand("uniform");

Fx = zeros(m,1);

for j = 1:m
    // X1 suit une loi Binomiale B(600,1/200)
    X1 = rand(n,1);
    count = zeros(2,1);
    for i = 1:n
        if X1(i) >= p then
            X1(i) = 1;
            count(1) = count(1) + 1;
        else
            X1(i) = 0;
            count(2) = count(2) + 1;
        end
    end
    
    // Fonction de répartition empirique
    Fx(j) = count(1) / n;
end

U = rand(1,n);
    X = cumsum(U);
X = X ./ [1:n];
plot2d(X)
