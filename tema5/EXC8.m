%% Algoritmi utilizati
disp('Metoda Hermite cu diferente divizate');
type ('MetHerDD.m');
%% Exercitiul 8
f=@(x)sin(x)
xmin=-pi/2;
xmax=pi/2;
X=linspace(xmin,xmax,3);
Y=f(X);
fp=@(x)cos(x)
Z=fp(X);
figure(1)
plot(X,Y,'o','MarkerFaceColor','b','Markersize',10);
x=linspace(xmin,xmax,100);
for i=1:length(x)
    y(i)=MetHerDD(X,Y,Z,x(i),f);
end
syms xp;
Pn=0;
for i=1:length(x)
    Pn=Pn+(y(i)*(xp^(i-1)));
    v(i)=i-1;
end
for i=1:length(x)
    z(i)=y(i)*v(i);
end
Pn=matlabFunction(Pn,'vars',{xp});
Pn(xp)
Y=f(x)
Z=fp(x)
hold on
plot(x,Y,'o','MarkerFaceColor','b','Markersize',10);
grid on
plot(x,y,'Linewidth',3);
grid on
figure(2)
hold on;
plot(x,Z,'o','MarkerFaceColor','b','Markersize',10);
grid on
plot(x,z,'Linewidth',3);
grid on

disp('Reprezentare eroare E=|f-Pn|');
figure(3)
E1=abs(f(xp)-Pn(xp));
fplot(E1,[-pi/2,pi/2]);