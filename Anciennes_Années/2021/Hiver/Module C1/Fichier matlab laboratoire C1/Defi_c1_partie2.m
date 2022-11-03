clear all
close all
clc

x=linspace(-1,4,35);




plot(x,H1(x),'-g')
hold on
plot(x,J1(x),'-r')
plot(x,K1(x),'--k')
%%resoudre le problème d'intersection bissection

pt_intersect1=my_fzero(@K1,[-1 1]) %on trouve le r de K1

pt_intersect2=my_fzero(@K1,[2 4]) %on trouve le r2 de K1

y1=H1(pt_intersect1)
y2=H1(pt_intersect2)

plot(pt_intersect1,y1,'or')
plot(pt_intersect2,y2,'or')
