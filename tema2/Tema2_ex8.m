%% exercitiul 8
syms x;
f=x^3-18*x-10;
f  = matlabFunction(f,'vars',{x});
X  = -5:0.01:5;
y  = f(X);
plot(X,y,'lineWidth',3)
grid on;
s1 = MetSecantei(f,-5,-3,-4.7,-3.6,10^(-5));
s2 = MetSecantei(f,-1, 1,-0.7, 0.6,10^(-5));
s3 = MetSecantei(f, 4, 5, 4.3, 4.9,10^(-5));
hold on;
% plot(s1,f(s1),'o','MarkerFaceColor','g','markerSize',10)
% plot(s2,f(s2),'o','MarkerFaceColor','g','markerSize',10)
% plot(s3,f(s3),'o','MarkerFaceColor','g','markerSize',10)

pf1 = MetPozFalse(f,-5,-3,10^(-20));
pf2 = MetPozFalse(f,-1, 1,10^(-20));
pf3 = MetPozFalse(f, 4, 5,10^(-20));

plot(pf1,f(pf1),'o','MarkerFaceColor','g','markerSize',10)
plot(pf2,f(pf2),'o','MarkerFaceColor','g','markerSize',10)
plot(pf3,f(pf3),'o','MarkerFaceColor','g','markerSize',10)
