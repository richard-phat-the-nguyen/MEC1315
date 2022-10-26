function [A] = my_trapz(x,y)


npts=length(x);

da=0;
dx=x(2)-x(1);
for i=2:npts
   da=da+(y(i)+y(i-1)) /2* dx;
end
A=da;
end

