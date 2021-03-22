function [ x ] = GaussFaraPiv( A, b )
n=length(b);
index=1:n;
A=[A,b];
    for k=1:n-1
        for i=k:n
            if A(i,k)~=0
                p=i;
            end
        end
        if p==0
            fprintf('Sistem incompatibil sau sistem compatibil nedeterminat');
            x='Error';
            return;
        end
        if p~=k
            A([p,k],:)=A([k,p],:);
        end
        for l=k+1:n
            M=A(l,k)/A(k,k);
            A(l,:)=A(l,:)-M*A(k,:);
        end
    end
    if A(n,n)==0
        fprintf('Sistem incompatibil sau sistem compatibil nedeterminat\n');
        x='Error';
        return;
    end
    y=SubsDesc(A(:,1:n),A(:,n+1));
    for i=1:n
        x(index(i))=y(i);
    end
end

