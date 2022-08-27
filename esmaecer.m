close all
clear all
clc

red=input('Digite valor p/ Vermelho:'); 
green=input('Digite valor p/ Verde:'); 
blue=input('Digite valor p/ Azul:'); 

do

close all
clc

img_R=zeros(20)+red;
img_G=zeros(20)+green;
img_B=zeros(20)+blue;

img2=cat(3,img_R,img_G,img_B);

figure, imshow(img2);

red=input('Digite novo valor p/ Vermelho:'); 
green=input('Digite novo valor p/ Verde:'); 
blue=input('Digite novo valor p/ Azul:'); 

until(red==0&&green==0&&blue==0);