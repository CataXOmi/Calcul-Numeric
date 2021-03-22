%% Problema 6
syms x
f = x^3-7*x^2+14*x-6
df=diff(f,x);
f=matlabFunction(f,'vars',{x});
df=matlabFunction(df,'vars',{x});
X=0:0.1:4;
Y=f(X);
plot(X,Y,'lineWidth',3)
grid on
r1=MetNR(f,df,0,10^(-3))
r2=MetNR(f,df,2,10^(-3))
r3=MetNR(f,df,4,10^(-3))
hold on
plot(r1,f(r1),'o','MarkerFaceColor','g','MarkerSize',10)
plot(r2,f(r2),'o','MarkerFaceColor','g','MarkerSize',10)
plot(r3,f(r3),'o','MarkerFaceColor','g','MarkerSize',10)
