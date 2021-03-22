function [ L ] = FactCholesky(A)
    n=size(A,1);
    alf=A(1,1);
    if alf <= 0
        fprintf('A nu admite factorizare Cholesky \n')
        return;
    end
    L(1,1)=sqrt(A(1,1));
    for i=2:n
        L(i,1)=A(i,1)/L(1,1);
    end
    for k=2:n
        s=0;
        for j=1:k-1
            s=s+L(k,j)*L(k,j);
        end
        alf=A(k,k)-s;
        if alf <= 0
            fprintf('A nu admite factorizare Cholesky \n')
            return;
        end
        L(k,k)=sqrt(alf);
        sum=0;
        for i=k+1:n
            for r=1:k-1
                sum=sum+L(i,r)*L(k,r);
            end
            L(i,k)=(A(i,k)-sum)/L(k,k);
        end
    end
end

