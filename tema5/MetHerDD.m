function [y] = MetHerDD(X,Y,Z,x,f)
    n=length(X)-1;
    for i=1:n+1
        Xb(2*i-1)=X(i);
        Xb(2*i)=X(i);
    end
    for i=1:(2*n+2)
        Q(i,1)=f(Xb(i));
    end
    for i=1:n+1
        Q(2*i,2)=Z(i);
    end
    for i=2:n+1
        Q(2*i-1,2)=(Q(2*i-1,1)-Q(2*i-2,1))/(Xb(2*i-1)-Xb(2*i-2));
    end
    for i=3:(2*n+2)
        for j=3:i
            Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(Xb(i)-Xb(i-j+1));
        end
    end
    Her=Q(1,1);
    for k=2:(2*n+2)
        p=1;
        for i=1:k-1
            p=p*(x-Xb(i));
        end
        Her=Her+Q(k,k)*p;
    end
    y=Her;
end

