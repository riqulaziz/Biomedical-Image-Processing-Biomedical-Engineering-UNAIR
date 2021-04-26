clc
clear;close all


A=[2 4 5 6;
   2 1 7 8;
   5 8 10 3];
[m, n]=size(A);

for j=1:m
    for k=1:n
        x=A(j,k)*exp(-2i*pi*((1*j/m)+(2*k/n)));
    end
end
sum(x) % hasil dari f(1,2)