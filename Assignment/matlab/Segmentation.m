clear;clc;close all;
RGB = imread('mawar.jpg');

%Determine if Img must be converted to 2 dimension
if size(RGB, 3) > 1
  gray = RGB;
  bw = RGB;
else 
  bw = RGB;
end

%---Point and Line Segmentation---%
%KERNEL
point = [-1 -1 -1; -1 8 -1; -1 -1 -1];  % Titik
hor = [-1 -1 -1; 2 2 2; -1 -1 -1];      % Garis Horizontal
di_up = [-1 -1 2; -1 2 -1; 2 -1 -1];    % Garis +45
di_down = [2 -1 -1; -1 2 -1; -1 -1 2];  % Garis -45
ver = [-1 2 -1; -1 2 -1; -1 2 -1];      % Garis Vertikal

%Convolusion Process with Manual Kernel
conv_point = conv2(point, bw);
conv_hor = conv2(hor, bw);
conv_up = conv2(di_up,bw);
conv_down = conv2(di_down,bw);
conv_ver = conv2(ver,bw);

%---Edge Detection---%
% %KERNEL for Manual Input
% SxSobel = [ -1 0 1 ; -2 0 2; -1 0 1 ];
% SxSobel = [ 1 2 1 ; 0 0 0 ; -1 -2 -1 ];
% perX = [ -1 0 1 ; -1 0 1; -1 0 1 ];
% perY = [ 1 1 1 ; 0 0 0; -1 -1 -1 ];
% robX = [ 1 0 ; 0 -1 ];
% robY = [ 0 1 ; -1 0 ];


%With Function/Toolbox

%---PLOTTING---%
%Point and Line Plot
figure(1);
subplot(2,3,1), imshow(RGB); title('Original Image');
subplot(2,3,2), imshow(conv_point,[]); title('Point');
subplot(2,3,3), imshow(conv_hor,[]); title('Horizontal');
subplot(2,3,4), imshow(conv_up,[]); title('+45');
subplot(2,3,5), imshow(conv_down,[]); title('-45');
subplot(2,3,6), imshow(conv_ver,[]); title('Vertical');
