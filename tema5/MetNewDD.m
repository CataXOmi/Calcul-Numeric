function [y] = MetNewDD(X,Y,x,f)
    n=length(X)-1;   
    for i=1:n+1
        Q(i,1)=f(X(i));
    end
    for i=2:n+1
        for j=2:i
            Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(X(i)-X(i-j+1));
        end
    end
    Pn=Q(1,1);
    for k=2:n+1
        p=1;
        for i=1:k-1
            p=p*(x-X(i));
        end
        Pn=Pn+Q(k,k)*p;
    end
    y=Pn;        
end

