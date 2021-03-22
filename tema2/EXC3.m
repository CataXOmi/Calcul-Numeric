%% Subpunctul a. Grafice
% grafic y=e^x-2
x=linspace(-2,10,100);
y=exp(x)-2;
plot(x,y,'r','Linewidth',3,'MarkerFaceColor','y','MarkerSize',10,'MarkerEdgeColor','g')
grid on
%%
% grafic y=cos(e^x-2)
x=linspace(-2,10,75);
y=cos(exp(x)-2);
plot(x,y,'r','Linewidth',3,'MarkerFaceColor','y','MarkerSize',10,'MarkerEdgeColor','g')
grid on
%% Subpunctul b.
f=inline('exp(x)-2-cos(exp(x)-2)','x');
r=MetBisectie(f, 0.5, 1.5, 10^(-5))