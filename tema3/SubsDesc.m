function [ x ] = SubsDesc( A, b )
n=length(b);
x(n)=b(n)/A(n,n);
k=n-1;
while k>0
    s=0;
    for j=k+1:n
        s=s+A(k,j)*x(j);
    end
    x(k)=(b(k)-s)/A(k,k);
    k=k-1;
end
x=transpose(x);
end

