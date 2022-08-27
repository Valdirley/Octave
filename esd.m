close all
clear all
clc

img = imread('gatinho.jpeg');
figure('name','Imagem Original');

imshow(img);

%Gerando Imagem Vermelha

for (i=1:size(img,1))
  for (j=1:size(img,2))
     if (img(i,j,1)>100 && img(i,j,2)>100) || img(i,j,1)<160 
              img(i,j,1)=255;
              img(i,j,2)=255;
              img(i,j,3)=255;
      endif     
  endfor
endfor


figure('name', 'Imagem Vermelho');
imshow(img);
imwrite(img,'RedFig.jpeg');

%Gerando Imagem Verde

clear img
img = imread('gatinho.jpeg');

for (i=1:size(img,1))
  for (j=1:size(img,2))
     if (img(i,j,1)>100 && img(i,j,2)>100) || img(i,j,2)<80
              img(i,j,1)=255;
              img(i,j,2)=255;
              img(i,j,3)=255;
      endif     
  endfor
endfor


figure('name', 'Imagem Verde');
imshow(img);
imwrite(img,'GreenFig.jpeg');

%Gerando Imagem Amarelo

clear img
img = imread('gatinho.jpeg');

for (i=1:size(img,1))
  for (j=1:size(img,2))
     if (img(i,j,1)<150 && img(i,j,2)<150) || img(i,j,3)>100 || (img(i,j,1)>150 && img(i,j,2)<150)
              img(i,j,1)=255;
              img(i,j,2)=255;
              img(i,j,3)=255;
      endif     
  endfor
endfor


figure('name', 'Imagem Amarelo');
imshow(img);
imwrite(img,'YellowFig.jpeg');
