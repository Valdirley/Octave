clear all %fechar todas as vari�veis
close all %fechar as janelas abertas

im = imread('D:\EAJ\2022\DIPAS\rgb2.png'); %leitura de imagem
figure('Name','Imagem Original') %abertura de janela de exibi��o
imshow(im) %mostrar a imagem na janela

imR = im(:,:,1);
figure('Name','Imagem R') %abertura de janela de exibi��o
imshow(imR) %mostrar a imagem na janela

imG = im(:,:,2);
figure('Name','Imagem G') %abertura de janela de exibi��o
imshow(imG) %mostrar a imagem na janela

imB = im(:,:,3);
figure('Name','Imagem B') %abertura de janela de exibi��o
imshow(imB) %mostrar a imagem na janela


im(1,1,1) = 0;
im(1,1,2) = 0;
im(1,1,3) = 0;


