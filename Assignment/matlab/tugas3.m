clc;close all;clear
I = imread('mawar.jpg');
B = bwmorph(I,'skel',Inf)
imshowpair(I,B,'montage')