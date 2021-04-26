clc;
clear all; close all
 
% I=imread('foto.jpeg');
% R=imhist(I(:,:,1));
% G=imhist(I(:,:,2));
% B=imhist(I(:,:,3));
% figure(1), plot(R,'r')
% hold on, plot(G,'g')
% plot(B,'b'), legend(' Red channel','Green channel','Blue channel');
% xlabel("intesitas warna")
% title("Histogram gambar RGB")
% hold off,
% 
% Ir=rgb2gray(I);
% figure(2)
% imhist(Ir)
% xlabel("intesitas warna")
% title("Histogram gambar grayscale")

% pic = imread('foto.jpeg'); 
% red = pic(:,:,1); 
% green = pic(:,:,2);
% blue = pic(:,:,3);
% f = fft2(pic); 
% ff = abs(f); 
% flog = log(ff);
% imshow(ff(:,:,3),[0 200]), colormap(jet),colorbar 
% figure,imshow(ff(:,:,3),[0 12]), colormap(jet),colorbar
I=imread('foto.jpeg');
F=fft2(I);
F = fftshift(F); % Center FFT

F = abs(F); % Get the magnitude
F = log(F+1); % Use log, for perceptual scaling, and +1 since log(0) is undefined
F = mat2gray(F); % Use mat2gray to scale the image between 0 and 1
imagesc(F)
% imshow(F,[]); % Display the result
% img   = imread('foto.jpeg');
% imagesc(img)
% img   = fftshift(img(:,:,2));
% F     = fft2(img);
% 
% figure;
% 
% imagesc(100*log(1+abs(fftshift(F)))); colormap(gray); 
% title('magnitude spectrum');
% 
% figure;
% imagesc(angle(F));  colormap(gray);
% title('phase spectrum');

