%% Algoritmi utilizati
disp('Metoda Newton');
type ('MetNewton.m');
%% EXC2
% Jacobianul sistemului
syms x1 x2;
f1=x1.^2-10*x1+x2.^2+8;
f2=x1.*(x2.^2)+x1-10*x2+8;
Js=[diff(f1,x1) diff(f1,x2);
    diff(f2,x1) diff(f2,x2)];
Js=matlabFunction(Js,'vars',{x1,x2});
Js(x1,x2)
Jf=jacobian([f1;f2],[x1,x2])
%%
% Reprezentarea celor 2 curbe
f1=@(x1,x2)x1.^2-10*x1+x2.^2+8;
fimplicit(f1,[0,5,0,5]);
grid on
hold on
axis equal
f2=@(x1,x2)x1.*(x2.^2)+x1-10*x2+8;
fimplicit(f2,[0,5,0,5]);
%%
% Determinarea punctelor de intersectie cu ajutorul metodei Newton
F=@(x1,x2)[x1.^2-10*x1+x2.^2+8;x1.*(x2.^2)+x1-10*x2+8]
x0=[1;1];
eps=10^(-6);
[r1,N1]=MetNewton(F,Js,x0,eps)
x0=[3;3];
[r2,N2]=MetNewton(F,Js,x0,eps)
%%
% Reprezentarea punctelor de intersectie pe graficul curbelor
plot(r1(1),r1(2),'o','MarkerFaceColor','r','Markersize',10);
plot(r2(1),r2(2),'o','MarkerFaceColor','r','Markersize',10);

