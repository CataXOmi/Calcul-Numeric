function [L,U,w,P]=FactLU(A)
    n=size(A,1);
    L=eye(n);
    P=1:n;
    for k=1:n-1
        max=0;
        for i=k:n
                if abs(A(i,k))>max
                    max=abs(A(i,k));
                    p=i;
                end
        end
        if max==0
            fprintf('Nu admite factorizare LU \n')
            return;
        end
        w(k)=p;
        if p~=k
            A([p,k],:)=A([k,p],:);
        end
        for l=k+1:n
            L(l,k)=A(l,k)/A(k,k);
            A(l,:)=A(l,:)-L(l,k)*A(k,:);
        end
        if k>1
            L([p,k],1:k-1)=L([k,p],1:k-1);
        end
        P([p,k])=P([k,p])
    end
    if A(n,n)==0
        fprintf('Nu admite factorizare LU \n');
        return;
    end
    U=A;
end



