// expo2.sce
clear;
rand("uniform");


lambda = 1;
N = 1600;
a = 0;
b = 5;


// les N tirages
data = - log( rand(1,N) ) / lambda;

// subdivision pour l'histogramme
s  = a:0.20:b;

// la densite
x =  a:0.01:b;
px = lambda*exp(-lambda*x); 

clf;
xtitle( "Histogramme: loi exponentielle de parametre " + .. 
        string(lambda) + ".  Nombre de simulations : " + ..
        string( N) ) ;
histplot( s, data);
plot2d( x, px, 5);
