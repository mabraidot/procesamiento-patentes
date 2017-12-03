clear all
clc
%pkg load image


% RECONOCER UNA PATENTE
img = imread('patente1.jpg');
%{
img3 = img;
img3 = imresize(img3,[257 800]);
img3 = img3(80:220,15:785,3);
%}





img_2 = img(:,:,1);
%SE = strel('square',5);
%img_2 = imdilate(img_2, SE);
%T = graythresh(img_2);
%img_2 = im2bw(img_2,T);
%{
img_2(img_2 < 200) = 0;
img_2(img_2 > 0) = 255;
img_2 = bwareaopen (img_2, 300);
%}
img3 = img_2;
[m,n] = size(img_2);
indice1 = 1;
indice2 = m;

suma = [];
division = int16(m/10);
for i=1:division:m
  ii = i+10;
  if ii > m
      ii = i;
  end;
  suma = [suma sum(mean(img3(i:ii,:)), 'native')];
end
%suma
[M1,I1] = max(suma);
suma(I1) = 0;
[M2,I2] = max(suma);

indice1 = ((I1-1)*division) + 1;
indice2 = ((I2-1)*division) + 1;
if indice1 > indice2
    temp = indice2;
    indice2 = indice1;
    indice1 = temp;
end
img3 = img3(indice1:indice2,15:(n-15));

%{
suma = [];
division = int16(n/10);
for i=1:division:n
  ii = i+10;
  if ii > n
      ii = i;
  end;
  suma = [suma sum(mean(img3(:,i:ii)), 'native')];
end
suma
[M1,I1] = max(suma);
suma(I1) = 0;
[M2,I2] = max(suma);

indice1 = ((I1-1)*division) + 1;
indice2 = ((I2-1)*division) + 1;
if indice1 > indice2
    temp = indice2;
    indice2 = indice1;
    indice1 = temp;
end
img3 = img3(:,indice1:indice2);
%}




%{
subplot(3,1,1);
imshow(img3);
subplot(3,1,2);
imshow(img2);
subplot(3,1,3);
imshow(img);
%}





patente_procesar(img, img3)