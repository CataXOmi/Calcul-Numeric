%% Ex 3 b) + c)
%% b)
%% SI 
%% GFP
A=[0 1 1;
    2 1 5
    4 2 1]
b=[3;5;1]
x=GaussFaraPiv(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% GPP
A=[0 1 1;
    2 1 5
    4 2 1]
b=[3;5;1]
x=GaussPivPart(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% GPT
A=[0 1 1;
    2 1 5
    4 2 1]
b=[3;5;1]
x=GaussPivTot(A,b);
x=transpose(x)
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% SII
%% GFP
A=[0 1 -2;
    1 -1 1
    1 0 -1]
b=[4;6;2]
x=GaussFaraPiv(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% GPP
A=[0 1 -2;
    1 -1 1
    1 0 -1]
b=[4;6;2]
x=GaussPivPart(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% GPT
A=[0 1 -2;
    1 -1 1
    1 0 -1]
b=[4;6;2]
x=GaussPivTot(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% c)
%% SI
%% GFP
eps=10^(-20);
A=[eps 1;
    1 1]
b=[1;2]
x=GaussFaraPiv(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% GPP
eps=10^(-20);
A=[eps 1;
    1 1]
b=[1;2]
x=GaussPivPart(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x);
%% SII
%% GPP
C=10^(20);
A=[1 C;
    1 1]
b=[C;2]
x=GaussPivPart(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x)
%% GPT
C=10^(20);
A=[1 C;
    1 1]
b=[C;2]
x=GaussPivTot(A,b);
x=transpose(x);
fprintf('Solutia sistemului Ax=b este : \n');
disp(x)
%% Observatii
% Metoda GFP induce mari erori in rezolvarea sistemelor in momentul in care elementele pivot sunt foarte mici, dar pentru valoarea 10^(-20) matlab a aproximat aceasta valoare la 0 si astfel GFP a returnat solutia corespunzatoare
% 
% Metoda GFP induce mari erori in rezolvarea sistemelor in momentul in care elementele pivot sunt foarte mari.
