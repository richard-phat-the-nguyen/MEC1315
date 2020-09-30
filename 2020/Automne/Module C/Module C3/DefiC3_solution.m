% Exemple Code_C3b.m
clc; clear all; close all;
nom_fichier_in = 'gato.stl'
[f1,v1,n1]=lire_STL(nom_fichier_in,false);
% ==============================================
[nv1,a]=size(v1);          % Nombre de points dans v

n1=n1*Ry(-pi/2);
v1=v1*Ry(-pi/2);

min_z=min(v1(:,3));
v1(:,3)=v1(:,3)-min_z;

max_x=max(v1(:,1));
min_x=min(v1(:,1));
max_y=max(v1(:,2));
min_y=min(v1(:,2));

%décalage en x
v1(:,1)=v1(:,1)- (max_x+min_x)/2;
%decalage en y
v1(:,2)=v1(:,2)- (max_y+min_y)/2;

f2=f1+nv1;
v2=v1;
n2=n1;

n2=n2*Rz(pi)
v2=v2*Rz(pi)
%translation du 1er chat
v1(:,1)=v1(:,1)+75
%rotation avant translation du 2iem chat
v2=v2*0.5;
v2(:,1)=v2(:,1)-75




f=[f1;f2]; v=[v1;v2]; n=[n1;n2];
% ================================================
nom_fichier_out = 'gato2.stl';
ecrire_STL(nom_fichier_out,f,v,n,false);
% Affichage dans MatLab du STL
obj=TriRep(f,v);
trisurf(obj);
axis equal;
