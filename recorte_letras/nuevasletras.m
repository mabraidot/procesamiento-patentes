clear all
clc

letras=imread('letras.png');
[n, m, c] = size(letras);
letras=letras(1:n,1:m,3);


letras(letras < 200) = 1;
letras(letras >= 200) = 0;
% 
% [n, m] = size(letras);
% for i=1:n
%   for j=1:m
%     if letras(i,j) < 200
%       letras(i,j) = 1;
%     else
%       letras(i,j) = 0;
%     end
%   end
% end


%letras=bwareaopen(letras, 100);
[L, Ne] = bwlabel(letras);
for n=1:Ne

  [r,c] = find(L==n);
  n1=letras(min(r):max(r),min(c):max(c));
  
  minIn=min(n1(:)); 
  maxIn=max(n1(:)); 
  n1=(n1-minIn)/(maxIn - minIn);
  
  img_r=imresize(n1,[42 24]);
  img_r=bwareaopen(img_r, 10);
  img_r(img_r > 0) = 1;
  imwrite(img_r,[num2str(n,'%d') '.bmp']);
  
  %break;
  %subplot(1,Ne,n)
  %imshow(img_r);
  
end
