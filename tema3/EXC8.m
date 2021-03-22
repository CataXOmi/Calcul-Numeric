%% Fact Cholesky(exc. 8)
A=[1 2 3;
    2 5 8
    3 8 14]
b=[-5;-14;-25]
[L]=FactCholesky(A)
y=SubsAsc(L,b)
L=transpose(L)
x=SubsDesc(L,y)