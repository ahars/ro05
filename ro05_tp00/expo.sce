// expo.sce
clear;
rand("uniform");


lambda = 1;
N = 1600;
a = 0;
b = 5;


function y = densExpo(para, x)
    if ( x < 0 )
        y = 0;
    else
        y = para*exp(-para*x);
    end
endfunction


function X = simuExpo(para)
    U = rand();
    X = -log(U)/para;
endfunction


s = linspace(a, b, 21);
data = zeros(1,N);
for n = 1:N
    data(n) = simuExpo(lambda);
end

x = linspace(a, b, 501);
px = zeros(x);
for i = 1:length(x)
    px(i) = densExpo(lambda, x(i));
end

clf;
xtitle( "Histogramme: loi exponentielle de parametre " + .. 
        string(lambda) + ".  Nombre de simulations : " + ..
        string( N) ) ;
histplot(s, data);
plot2d(x, px, 5);
