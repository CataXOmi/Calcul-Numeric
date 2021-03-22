function [invA, detA] = INVGPP(A)
n=size(A,1);
L=eye(n);
detA=det(A);
invA=inv(A);
end

