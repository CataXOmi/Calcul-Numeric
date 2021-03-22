%% Algoritmi utilizati
disp('Metoda Newton');
type ('MetNewton.m');
%% EXC 1
% Jacobianul sistemului
syms x y;
f1=x.^2+y.^2-4;
f2=(x.^2)/8-y;
Js=[diff(f1,x) diff(f1,y);
    diff(f2,x) diff(f2,y)];
Js=matlabFunction(Js,'vars',{x,y});
Js(x,y)
Jf=jacobian([f1; f2],[x, y])
%%
% Reprezentarea celor 2 curbe
f1=@(x,y)x.^2+y.^2-4;
fimplicit(f1,[-3,3,-3,3])
grid on
hold on
axis equal
f2=@(x,y)(x.^2)/8-y;
fimplicit(f2,[-3,3,-3,3]);
%%
% Determinarea punctelor de intersectie cu ajutorul metodei Newton
F=@(x,y)[x.^2+y.^2-4;x.^2/8-y]
x0=[-2;0];
eps=10^(-6);
[r1,N1]=MetNewton(F,Js,x0,eps)
x0=[2;0];
[r2,N2]=MetNewton(F,Js,x0,eps)
%%
% Reprezentarea punctelor de intersectie pe graficul curbelor
plot(r1(1),r1(2),'o','MarkerFaceColor','r','Markersize',10);
plot(r2(1),r2(2),'o','MarkerFaceColor','r','Markersize',10);

