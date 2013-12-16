// exercice scilab

// 1.
l = (sqrt(5)-1)/2;
n = 10;
u = zeros(n, 1);
u(1) = 1;

for i = 1:n-1
    u(i+1) = 1 / (1 + u(i));
end

l
u
