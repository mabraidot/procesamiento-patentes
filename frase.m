%pkg load image


%A = zeros(42,24);
%A(17:24,1:24) = 1;
%imwrite(im2bw(A), 'letras_numeros/_.bmp');

%oracion = 'esto es una frase';
img = [];
for i=1:length(oracion);
    img_letra = oracion(i);
    if oracion(i) == ' ';
        img_letra = '_';
        letra = imread(['letras_numeros/' img_letra '.bmp']);
        %letra = zeros(42,24);
    else;
        letra = imread(['letras_numeros/' img_letra '.bmp']);
    end;
    img = [img letra zeros(42,5)];
    
end
A = img;
A=imcomplement(A);
img(:,:,1) = A;
img(:,:,2) = A;
img(:,:,3) = A;
imwrite(img,'frase.jpg');

clear all
clc




% RECONOCER UNA FRASE
img = imread('frase.jpg');
img2 = img;
img2 = img2(:,:,3);

patente_procesar(img, img2)