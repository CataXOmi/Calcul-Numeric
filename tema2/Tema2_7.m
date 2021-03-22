syms x;
f=8*x^3+4*x-1;
df=diff(f,x);
f=matlabFunction(f,'vars',{x});
df=matlabFunction(df,'vars',{x});
X=0:0.01:1;
Y=f(X);
plot(X,Y,'linewidth',3)
grid on;
hold on;
rNR=MetNR(f,df,1,10^(-3));
rS=MetSecantei(f,0,1,0,1,10^(-3));
rPF=MetPozFalse(f,0,1,10^(-3));
plot(rNR,f(rNR),'o','MarkerFaceColor','b','MarkerSize',15)
plot(rS,f(rS),'o','MarkerFaceColor','g','MarkerSize',10)
plot(rPF,f(rPF),'o','MarkerFaceColor','y','MarkerSize',5)