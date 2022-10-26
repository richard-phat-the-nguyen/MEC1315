clear all
close all
clc

%Correction Defi C2

% Exemple fichier_echelle.m
nom_fichier = 'mesures.pts'
fptr = fopen(nom_fichier,'r');
n = fscanf(fptr,'%g \n',1);  % Lecture du nombre de points
for i=1:n
  p(i,:) = fscanf(fptr,'%f %f \n',2); % Lecture d'un point
end
fclose(fptr);     
x=p(:,1);
y=p(:,2);

hold on
plot(x,y,'or')

M=[x.^3 x.^2 x.^1 x.^0];
%on veut résoudre le systeme Ma~y
%a=pinv(M)*y

  a=pinv(M)*y;
  
  xa=linspace(-20,10,40);
  ya=polyval(a,xa)
  
  plot(xa,ya,'-k')
  %solution 2 avec polyfit
  
 a2=polyfit(x,y,3)
 test_validation=a-a2'
 y3=polyval(a2,x)
 plot(x,y3,'-r')
