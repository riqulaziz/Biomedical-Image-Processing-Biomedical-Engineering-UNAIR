clc;clear;close all

A=[0 0 1 1;
    0 0 1 1;
    0 2 2 2;
    2 2 3 3;]
A=A+1;
c=max(A(:));
[m,n]=size(A);
tambah=1;
glcm=zeros([c,c]);
glcm1=zeros([c,c]);
for i= 1:m
    for j=1:n-1
        glcm(A(i,j),A(i,j+1))=glcm(A(i,j),A(i,j+1))+1;
    end
end
for i=m:-1:1
    for j=n:-1:2
        glcm(A(i,j),A(i,j-1))=glcm(A(i,j),A(i,j-1))+1;
    end
end
glcm