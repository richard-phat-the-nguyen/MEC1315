function [y] = G(x)
npts=length(x);
    for j=1:npts
       if x(j)<= -1
           g(j)=3*x(j)+2;
           
       elseif x(j)<1 & x(j)>-1
           g(j)=x(j)^3;
           
       else
           g(j)=3*x(j)-2;
       end
    end
    y=g;
end

