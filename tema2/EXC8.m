%% Exercitiul 8
% MetSecantei
syms x;
f=x^3-18*x-10;
f  = matlabFunction(f,'vars',{x});
X  = -5:0.1:5;
Y  = f(X);
plot(X,Y,'lineWidth',3)
grid on;
s1 = MetSecantei(f,-5,-3,-5,-3,10^(-5));
s2 = MetSecantei(f,-3, 3,-3, 3,10^(-5));
s3 = MetSecantei(f, 3, 5, 3, 5,10^(-5));
hold on;
plot(s1,f(s1),'o','MarkerFaceColor','r','markerSize',10)
plot(s2,f(s2),'o','MarkerFaceColor','r','markerSize',10)
plot(s3,f(s3),'o','MarkerFaceColor','r','markerSize',10)
hold off;
%%
% MetPozFalse
syms x;
f=x^3-18*x-10;
f  = matlabFunction(f,'vars',{x});
X  = -5:0.1:5;
Y  = f(X);
plot(X,Y,'lineWidth',3)
grid on;
rpf1 = MetPozFalse(f,-5,-3,10^(-5));
rpf2 = MetPozFalse(f,-3, 3,10^(-5));
rpf3 = MetPozFalse(f, 3, 5,10^(-5));
hold on;
plot(rpf1,f(rpf1),'o','MarkerFaceColor','r','markerSize',10)
plot(rpf2,f(rpf2),'o','MarkerFaceColor','r','markerSize',10)
plot(rpf3,f(rpf3),'o','MarkerFaceColor','r','markerSize',10)