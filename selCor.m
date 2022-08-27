close all
clear all
clc

tic;

img = imread('gatinho.jpeg');
figure('name','Imagem Original');

imshow(img);

%Seleção cor vermelha

img_R=img(:,:,1);
img_G=img(:,:,2);
img_B=img(:,:,3);

for (i=1:size(img_R,1))
  for (j=1:size(img_R,2))
        if (img_G(i,j)>100 && img_R(i,j)>100) || img_R(i,j)<120 
          img_R(i,j)=255;
          img_G(i,j)=255;
          img_B(i,j)=255;
        endif                 
  endfor
endfor


img2=cat(3,img_R,img_G,img_B);


figure('name', 'Imagem Vermelho');
imshow(img2);


imwrite(img2,'RedFig.jpeg');

%Seleção cor verde

img_R1=img(:,:,1);
img_G1=img(:,:,2);
img_B1=img(:,:,3);

for (i=1:size(img_G1,1))
  for (j=1:size(img_G1,2))
        if (img_R1(i,j)>100 && img_G1(i,j)>100) || img_G1(i,j)<120 
          img_R1(i,j)=255;
          img_G1(i,j)=255;
          img_B1(i,j)=255;
        endif                 
  endfor
endfor


img3=cat(3,img_R1,img_G1,img_B1);


figure('name', 'Imagem Verde');
imshow(img3);


imwrite(img3,'GreenFig.jpeg');

