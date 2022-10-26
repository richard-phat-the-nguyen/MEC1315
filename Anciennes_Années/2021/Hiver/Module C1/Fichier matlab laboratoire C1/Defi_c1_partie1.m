clear all
close all
clc

x=-2:0.1:5
y1=5-2/5*x;
y2=-2+3/2*x;
plot(x,y1,'-g')
hold on
plot(x,y2,'-r')
M=[2/5 1;-3/2 1];
e=[5;-2];
c=M\e;

plot(c(1),c(2),'om')