%% Cria��o do arquivo fis
fis = newfis('regras');

%% Cria��o do input 1 (Renda mensal) e suas vari�veis
fis = addvar(fis,'input','Renda',[0 9]);
fis = addmf(fis,'input',1,'baixa','trimf',[0 2000 2000]);
fis = addmf(fis,'input',1,'media','trimf',[2000 5000 5000]);
fis = addmf(fis,'input',1,'alta','trimf',[5000 10000 10000]);

%% Cria��o do input 2 (D�vidas do cliente) e suas vari�veis
fis = addvar(fis,'input','Dividas',[0 10]);
fis = addmf(fis,'input',2,'baixa','trimf',[0 3 4]);
fis = addmf(fis,'input',2,'media','trimf',[4 6 7]);
fis = addmf(fis,'input',2,'alta','trimf',[7 10 10]);

%% Cria��o do input 3 (Hist�rico do cliente) e suas vari�veis
fis = addvar(fis,'input','Historico',[0 10]);
fis = addmf(fis,'input',3,'ruim','trimf',[0 3 4]);
fis = addmf(fis,'input',3,'medio','trimf',[4 6 7]);
fis = addmf(fis,'input',3,'bom','trimf',[7 10 10]);

%% Cria��o do input 4 (Valor do cr�dito) e suas vari�veis
fis = addvar(fis,'input','Valor',[0 10000]);
fis = addmf(fis,'input',4,'baixo','trimf',[0 2000 2000]);
fis = addmf(fis,'input',4,'medio','trimf',[2000 5000 5000]);
fis = addmf(fis,'input',4,'alto','trimf',[5000 10000 10000]);

%% Cria��o da output (An�lise do risco) e suas vari�veis
fis = addvar(fis,'output','Risco',[0 10]);
fis = addmf(fis,'output',1,'baixo','trimf',[0 3 4]);
fis = addmf(fis,'output',1,'medio','trimf',[4 6 7]);
fis = addmf(fis,'output',1,'alto','trimf',[7 10 10]);

%% Cria��o das regras
% Especifica��o das regras conforme o site MathWorks.com (com adapta��o para mais colunas)
% Column 1 - Index of membership function for first input
% Column 2 - Index of membership function for second input
% Column 3 - Index of membership function for output
% Column 4 - Rule weight
% Column 5 - Fuzzy operator (1 for AND, 2 for OR)
% Fonte: https://www.mathworks.com/help/fuzzy/working-from-the-command-line.html

ListaDeRegras = [ ...
1	1	1	1	2	1	1
1	1	1	2	3	1	1
1	1	1	3	3	1	1
1	1	2	1	2	1	1
1	1	2	2	3	1	1
1	1	2	3	3	1	1
1	1	3	1	1	1	1
1	1	3	2	2	1	1
1	1	3	3	3	1	1
1	2	1	1	2	1	1
1	2	1	2	3	1	1
1	2	1	3	3	1	1
1	2	2	1	3	1	1
1	2	2	2	3	1	1
1	2	2	3	3	1	1
1	2	3	1	3	1	1
1	2	3	2	3	1	1
1	2	3	3	3	1	1
1	3	1	1	3	1	1
1	3	1	2	3	1	1
1	3	1	3	3	1	1
1	3	2	1	3	1	1
1	3	2	2	3	1	1
1	3	2	3	3	1	1
1	3	3	1	3	1	1
1	3	3	2	3	1	1
1	3	3	3	3	1	1
2	1	1	1	1	1	1
2	1	1	2	2	1	1
2	1	1	3	3	1	1
2	1	2	1	1	1	1
2	1	2	2	2	1	1
2	1	2	3	2	1	1
2	1	3	1	1	1	1
2	1	3	2	1	1	1
2	1	3	3	2	1	1
2	2	1	1	2	1	1
2	2	1	2	3	1	1
2	2	1	3	3	1	1
2	2	2	1	2	1	1
2	2	2	2	2	1	1
2	2	2	3	3	1	1
2	2	3	1	2	1	1
2	2	3	2	2	1	1
2	2	3	3	2	1	1
2	3	1	1	3	1	1
2	3	1	2	3	1	1
2	3	1	3	3	1	1
2	3	2	1	3	1	1
2	3	2	2	3	1	1
2	3	2	3	3	1	1
2	3	3	1	2	1	1
2	3	3	2	3	1	1
2	3	3	3	3	1	1
3	1	1	1	1	1	1
3	1	1	2	2	1	1
3	1	1	3	2	1	1
3	1	2	1	1	1	1
3	1	2	2	1	1	1
3	1	2	3	2	1	1
3	1	3	1	1	1	1
3	1	3	2	1	1	1
3	1	3	3	1	1	1
3	2	1	1	1	1	1
3	2	1	2	2	1	1
3	2	1	3	3	1	1
3	2	2	1	2	1	1
3	2	2	2	2	1	1
3	2	2	3	3	1	1
3	2	3	1	1	1	1
3	2	3	2	2	1	1
3	2	3	3	3	1	1
3	3	1	1	3	1	1
3	3	1	2	3	1	1
3	3	1	3	3	1	1
3	3	2	1	2	1	1
3	3	2	2	3	1	1
3	3	2	3	3	1	1
3	3	3	1	2	1	1
3	3	3	2	3	1	1
3	3	3	3	3	1	1 ];
fis = addrule(fis,ListaDeRegras);

%% C�lculo da sa�da
saida =  evalfis([10000 10 10 10000], fis);

if (saida < 3)
    disp("Risco baixo");
end

if (saida >= 3 && saida < 7)
    disp("Risco m�dio");
end

if (saida >= 7)
    disp("Risco alto");
end

%% Plots
% showfis(fis);
% showrule(fis);

 fuzzy(fis)
%plotmf(fis,'input',2)
%  gensurf(fis)


  mfedit(fis)%---- displays the Membership Function Editor.
% ruleedit(fis)%--- displays the Rule Editor.
% ruleview(a)%--- displays the Rule Viewer. %surfview(a)%---- displays the Surface View
