%% Fact LU(exc. 6)
A=[1 2 -1;
    2 4 7
    -1 2 5]
b=[2;13;10]
[L, U, w, P]=FactLU(A)
P
b=b(P)
L*U
L*U==A(P,:)
y=SubsAsc(L,b)
x=SubsDesc(U,y)