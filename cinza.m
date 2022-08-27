close all
clear all
clc

img = uint8(zeros(60,256));
figure('name', 'Imagem Preta');
imshow(img);
img2=img;

for(i=1:size(img,1))
  for(j=1:size(img,2))
    img2(i,j)=j-1;
  end
end

figure('name','imagem degrade');
imshow(img2);

arquivo = strcat('cinza', datestr(floor(now)),'.tif')
imwrite (img2, arquivo);
