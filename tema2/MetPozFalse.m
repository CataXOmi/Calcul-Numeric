function [Xaprox]=MetPozFalse(f,a,b,eps)
k = 1;
a(1) = a;
b(1) = b;
x(1) = (a(1)*f(b(1))-b(1)*f(a(1)))/(f(b(1))-f(a(1)));
while 1
    k=k+1;
    if (f(x(k-1))==0)
        x(k)=x(k-1);
        break
    elseif f(a(k-1))*f(x(k-1))<0
        a(k)=a(k-1);
        b(k)=x(k-1);
        x(k) = (a(k)*f(b(k))-b(k)*f(a(k)))/(f(b(k))-f(a(k)));
    elseif f(a(k-1))*f(x(k-1))>0
        a(k)=x(k-1);
        b(k)=b(k-1);
        x(k) = (a(k)*f(b(k))-b(k)*f(a(k)))/(f(b(k))-f(a(k)));
    end
    if(abs((x(k)-x(k-1))/x(k-1))<eps)
        break
    end
end
Xaprox=x(k);
k
end

