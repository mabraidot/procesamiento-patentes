function patente_template()
% Letras
A=imread('letras_numeros\A.bmp');B=imread('letras_numeros\B.bmp');
C=imread('letras_numeros\C.bmp');D=imread('letras_numeros\D.bmp');
E=imread('letras_numeros\E.bmp');F=imread('letras_numeros\F.bmp');
G=imread('letras_numeros\G.bmp');H=imread('letras_numeros\H.bmp');
I=imread('letras_numeros\I.bmp');J=imread('letras_numeros\J.bmp');
K=imread('letras_numeros\K.bmp');L=imread('letras_numeros\L.bmp');
M=imread('letras_numeros\M.bmp');N=imread('letras_numeros\N.bmp');
O=imread('letras_numeros\O.bmp');P=imread('letras_numeros\P.bmp');
Q=imread('letras_numeros\Q.bmp');R=imread('letras_numeros\R.bmp');
S=imread('letras_numeros\S.bmp');T=imread('letras_numeros\T.bmp');
U=imread('letras_numeros\U.bmp');V=imread('letras_numeros\V.bmp');
W=imread('letras_numeros\W.bmp');X=imread('letras_numeros\X.bmp');
Y=imread('letras_numeros\Y.bmp');Z=imread('letras_numeros\Z.bmp');
% Numeros
num1=imread('letras_numeros\1.bmp');num2=imread('letras_numeros\2.bmp');
num3=imread('letras_numeros\3.bmp');num4=imread('letras_numeros\4.bmp');
num5=imread('letras_numeros\5.bmp');num6=imread('letras_numeros\6.bmp');
num7=imread('letras_numeros\7.bmp');num8=imread('letras_numeros\8.bmp');
num9=imread('letras_numeros\9.bmp');num0=imread('letras_numeros\0.bmp');
GUION=imread('letras_numeros\_.bmp');

letras=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
numeros=[num1 num2 num3 num4 num5 num6 num7 num8 num9 num0 GUION];
caracter=[letras numeros];
templates=mat2cell(caracter,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 24]);
save ('templates','templates')