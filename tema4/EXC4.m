%% Algoritmi utilizati
disp('Metoda Directa');
type ('MetDirecta2.m');
disp('Metoda Lagrange');
type ('MetLagrange.m');
disp('Metoda Newton');
type ('MetNew.m');
disp('Substitutie Ascendenta');
type ('SubsAsc.m');
%% EXC4
f = @(x)sin(x);
n=5;
X=linspace(-pi/2,pi/2,n);
Y=f(X);
grid on
hold on
axis equal

% Metoda directa

disp ('Aplicand metoda directa obtinem polinomul');
syms x;
y=MetDirecta2(X,Y,x)
plot(linspace(-pi/2,pi/2,100), MetDirecta2(X,Y,linspace(-pi/2,pi/2,100)));

% Metoda Lagrange

disp ('Aplicand metoda Lagrange obtinem polinomul');
syms x;
y=MetLagrange(X,Y,x)
plot(linspace(-pi/2,pi/2,100), MetLagrange(X,Y,linspace(-pi/2,pi/2,100)));

% Metoda Newton

syms x;
disp ('Aplicand metoda Newton obtinem polinomul');
y=MetNew(X,Y,x)
plot(linspace(-pi/2,pi/2,100), MetNew(X,Y,linspace(-pi/2,pi/2,100)));
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
% fplot(f,[-pi/2,pi/2]);
legend('Metoda Directa', 'Metoda Lagrange', 'Metoda Newton');
hold off

% Reprezentare eroare E=|f-Pn|

 disp('Reprezentare eroare E=|f-Pn|');
 figure(2)
 E1=abs(f(x)-MetDirecta2(X,Y,x))
 fplot(E1,[-pi/2,pi/2]);
 legend('Metoda Directa');
 figure(3)
 E2=abs(f(x)-MetLagrange(X,Y,x))
 fplot(E2,[-pi/2,pi/2]);
 legend('Metoda Lagrange');
 figure(4)
 E3=abs(f(x)-MetNew(X,Y,x))
 fplot(E3,[-pi/2,pi/2]);
 legend('Metoda Newton');
%%
disp ('Cu cat crestem gradul polinomului apar mai multe variatii ale graficului')
disp ('Incepand cu n=64 polinomul isi pierde caracterul')



