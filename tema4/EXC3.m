%% Algoritmi utilizati
disp('Metoda Directa');
type ('MetDirecta2.m');
disp('Metoda Lagrange');
type ('MetLagrange.m');
disp('Metoda Newton');
type ('MetNew.m');
disp('Substitutie Ascendenta');
type ('SubsAsc.m');
%% EXC3

f = @(x)sin(x);
X=linspace(-pi/2,pi/2,5);
Y=f(X);
fplot(f,[-pi/2,pi/2]);
plot(X,Y,'o','MarkerFaceColor','r','Markersize',10);
grid on
hold on
axis equal

% Metoda directa

disp ('Aplicand metoda directa obtinem polinomul');
syms x;
y=MetDirecta2(X,Y,x)
disp 'Eroarea |Pn(pi/6) - f(pi/6)|='
abs(MetDirecta2(X,Y,pi/6) - f(pi/6))
fplot(y,[-pi/2,pi/2]);

% Metoda Lagrange

disp ('Aplicand metoda Lagrange obtinem polinomul');
y=MetLagrange(X,Y,x)
disp 'Eroarea |Pn(pi/6) - f(pi/6)|='
abs(MetLagrange(X,Y,pi/6) - f(pi/6))
fplot(y,[-pi/2,pi/2]);

% Metoda Newton

disp ('Aplicand metoda Newton obtinem polinomul');
y=MetNew(X,Y,x)
disp 'Eroarea |Pn(pi/6) - f(pi/6)|='
abs(MetNew(X,Y,pi/6) - f(pi/6))
fplot(y,[-pi/2,pi/2]);
