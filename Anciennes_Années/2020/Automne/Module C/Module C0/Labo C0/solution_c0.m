clear all
close all
clc

%% déclaration de variable
xi=0;
xf=2;
npts=21;

%on a suffisement d'information pour trouver x
dx=(xf-xi)/(npts-1)

%x=linspace(xi,xf,npts)

x=xi:dx:xf

%% calcul du f
%solution (a)
% f=x.^3
%solution (b)
%     for i=1:npts
%        f(i)=x(i)^3 ;
%     end

f=F(x)
%% calcul de g
%     for j=1:npts
%        if x(j)<= -1
%            g(j)=3*x(j)+2;
%            
%        elseif x(j)<1 & x(j)>-1
%            g(j)=x(j)^3;
%            
%        else
%            g(j)=3*x(j)-2;
%        end
%     end

g=G(x)
% 
%    
%% méthode booleane
%méthode déconseille
% g=f;
% g(x<=-1)=3*x(x<=-1)+2;
% g(x>=1)=3*x(x>=1)-2;

    
plot(x,f,'-g')
hold on
plot(x,g,'-ob')
hold off

da=0;  %pour f
da2=0;  %pour g
for i=2:npts
    da=da+(f(i)+f(i-1))/2*dx;
    da2=da2+(g(i)+g(i-1))/2*dx;
end
da
da2

Aire_f=my_trapz(x,f)
Aire_g=my_trapz(x,g)

%%
Quad_aireF=quad(@F,xi,xf)
Quad_aireG=quad(@G,xi,xf)
