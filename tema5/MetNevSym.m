function [y] = MetNevSym(X,Y,x,f)
    n=length(X)-1;
    syms P;
    for i=1:n+1
        Q(i,1)=sym(f(X(i)));
    end
    for i=2:n+1
        for j=2:i
            Q(i,j)=sym(((P-X(i-j+1))*Q(i,j-1)-(P-X(i))*Q(i-1,j-1))/(X(i)-X(i-j+1)));
        end
    end
    Pn=matlabFunction(Pn,'vars',{P});
    Pn=Q(n+1,n+1);
    y=Pn(x);        
end

