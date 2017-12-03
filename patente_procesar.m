function patente_procesar(img,img2)

% Carga la plantilla
load templates
% Computa el numero de letras en el archivo plantilla
num_letras=size(templates,2);

palabra=[ ];

img2(img2 < 50) = 1;
img2(img2 > 1) = 0;

img2 = bwareaopen(img2, 100);
[L Ne] = bwlabel(img2);
subplot(3,Ne,[Ne+1 Ne*2]);
imshow(img2);
subplot(3,Ne,[(Ne*2)+1 Ne*3]);
imshow(img);

for n=1:Ne

  [r,c] = find(L==n);
  n1=img2(min(r):max(r),min(c):max(c));
    
  minIn=min(n1(:)); 
  maxIn=max(n1(:)); 
  n1=(n1-minIn)/(maxIn - minIn);
  
  img_r=imresize(n1,[42 24]);
  %img_r=bwareaopen(img_r, 10);
  %img_r(img_r > 0) = 1;
  
  subplot(3,Ne,n)
  imshow(img_r);
  
  letra=patente_reconocer(img_r,num_letras);
  palabra=[palabra letra];
end
% Escribe la patente reconocida
sprintf('\nResultado del reconocimiento: %s\n',palabra)

