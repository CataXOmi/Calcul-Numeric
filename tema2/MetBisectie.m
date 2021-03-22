function [Xaprox] = MetBisectie(f, a, b, eps)
    N=floor(log2((b-a)/eps));
    a(1)=a;b(1)=b;x(1)=(a(1)+b(1))/2;
    for k=2:N 
        if f(x(k-1)) == 0
            x(k)=x(k-1);
            break
        elseif f(a(k-1))*f(x(k-1))<0
            a(k)=a(k-1);
            b(k)=x(k-1);
            x(k)=(a(k)+b(k))/2;
        elseif f(a(k-1))*f(x(k-1))>0
            a(k)=x(k-1);
            b(k)=b(k-1);
            x(k)=(a(k)+b(k))/2;
        end
    end
    Xaprox=x(k);
end

