// exercice 1 scilab

// 1. a)
l = (sqrt(5)-1)/2;
n1 = 10;
u1 = zeros(n, 1);
u1(1) = 1;

for i = 1:n1-1
    u1(i+1) = 1 / (1 + u1(i));
end

l
u1

// 1. b)
sigma = 2^-52;
i = 1;
u2 = i;
u2 = [u2; 1/(1+u2(i))];

while abs(u2(i+1)-u2(i)) > sigma
    n2 = i;
    i = i + 1;
    u2 = [u2; 1/(1+u2(i))];
end

[sigma n2]
u2

// 2.
en = log10(abs(u2(2) - u2(1)));

for i = 2:n2-1
    en = [en; log10(abs(u2(i+1) - u2(i)))];
end

// 3. a)
i = 1;
v = i;
v = [v; (v(i)^2 + 1) / (1 + 2 * v(i))];

while abs(v(i+1) - v(i)) > sigma
    n2 = i;
    i = i + 1;
    v = [v; 1 / (1 + v(i))];
end

[sigma n2]
v

fn = log10(abs(v(2) - v(1)));

for i = 2:n2-1
    fn = [fn; log10(abs(v(i+1) - v(i)))];
end

subplot(2,1,1)
plot(en)
subplot(2,1,2)
plot(fn)
