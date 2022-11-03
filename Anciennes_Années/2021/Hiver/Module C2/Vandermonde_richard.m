%
clear all
close all
clc
%P pour la matrice des points
P=[1 1
   2 4
   -1 1
   7 10
   -3 7];


x=P(:,1)
y=P(:,2)
M=[x.^3, x.^2, x.^1, x.^0];
a=pinv(M)*y

x_analy=-3:0.1:7
y_analy=polyval(a,x_analy)


hold on 
plot(x,y,'ob')
plot(x_analy,y_analy,'-r')
hold off



% 
% M=[x.^3,x.^2, x.^1, x.^0];
% c=pinv(M)*y
% 
% 
% % %Mc=y
% % c=M\y
% % 
%  x_analytique=-5:.1:10
%  y_a=polyval(c,x_analytique)
% % %y_1=c(1)*x_analytique.^4+.....
%     
% hold on
% %plot(x_analytique,y_a,'-r')
% plot(x,y,'ob')
% hold off
% 
% racine=roots(c)
