function [ Xaprox ] = MetNR( f,df,x0,eps )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
k=1; x(1)=x0;
while 1
        k=k+1;
        x(k)=x(k-1) - f(x(k-1))/df(x(k-1));
        if(abs((x(k)-x(k-1)))/abs(x(k-1))<eps)
            break
        end
end
Xaprox=x(k);
end

