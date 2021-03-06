%% Avaliador Fuzzy para An�lise de Viabilidade de Inser��o em Est�gios da EEEP Jos� Vidal Alves
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function saidaF = funcaoFuzzy(MAVT, MAVP, Assi, Rel, verificarToolBox)
 %% Cria��o do arquivo fis
    fis = newfis('regras');
        
    %% Cria��o do input 1 - M�dia das Avalia��es Te�ricas (notas avalia��es escritas)
    fis = addvar(fis,'input','ConTeorico',[0 10]);
    fis = addmf(fis,'input',1,'Insuficiente','trapmf', [0 0 4.5 5]);
    fis = addmf(fis,'input',1,'Regular','trapmf', [4.5 5 6.5 7]);
    fis = addmf(fis,'input',1,'Bom','trapmf', [6.5 7 7.5 8]);
    fis = addmf(fis,'input',1,'MuitoBom','trapmf', [7.5 8 8.5 9]);
    fis = addmf(fis,'input',1,'Excelente','trapmf', [8.5 9 10 10]);

    %% Cria��o do input 2 - Conhecimento t�cnico (pr�tico)
    fis = addvar(fis,'input','ConTecnico',[0 10]);
    fis = addmf(fis,'input',2,'Insuficiente','trapmf', [0 0 4.5 5]);
    fis = addmf(fis,'input',2,'Regular','trapmf', [4.5 5 6.5 7]);
    fis = addmf(fis,'input',2,'Bom','trapmf', [6.5 7 7.5 8]);
    fis = addmf(fis,'input',2,'MuitoBom','trapmf', [7.5 8 8.5 9]);
    fis = addmf(fis,'input',2,'Excelente','trapmf', [8.5 9 10 10]);

    %% Cria��o do input 3 - Assiduidade e Pontualidade
    fis = addvar(fis,'input','Assiduidade',[0 5]);
    fis = addmf(fis,'input',3,'Insuficiente','trapmf', [0 0 2 2.25]);
    fis = addmf(fis,'input',3,'Regular','trapmf',  [2 2.25 2.75 3]);
    fis = addmf(fis,'input',3,'Bom','trapmf',  [2.75 3 3.5 3.75]);
    fis = addmf(fis,'input',3,'MuitoBom','trapmf',  [3.5 3.75 4.5 4.75]);
    fis = addmf(fis,'input',3,'Excelente','trapmf',  [4.5 4.75 5 5]);
    
    %% Cria��o do input 4 - Relacionamento Interpessoal
    fis = addvar(fis,'input','RelInterpessoal',[0 5]);
    fis = addmf(fis,'input',4,'Insuficiente','trapmf', [0 0 2 2.25]);
    fis = addmf(fis,'input',4,'Regular','trapmf',  [2 2.25 2.75 3]);
    fis = addmf(fis,'input',4,'Bom','trapmf',  [2.75 3 3.5 3.75]);
    fis = addmf(fis,'input',4,'MuitoBom','trapmf',  [3.5 3.75 4.5 4.75]);
    fis = addmf(fis,'input',4,'Excelente','trapmf',  [4.5 4.75 5 5]);
 
    %% Cria��o do output - Aptid�o
    fis = addvar(fis,'output','Aptidao',[0 5]);
    fis = addmf(fis,'output',1,'Inapto','trapmf', [0 0 1.12 1.978]);
    fis = addmf(fis,'output',1,'Atencao','trapmf', [1 2 3 3.5]);
    fis = addmf(fis,'output',1,'Apto','trapmf', [3 4 5 5]);


        
    %% Cria��o das regras
    % Especifica��o das regras conforme o site MathWorks.com (com adapta��o para mais colunas)
    % Columns 1, 2, 3, and 4 - Index of membership function for inputs
    % Column 5 - Index of membership function for output
    % Column 6 - Rule weight
    % Column 7 - Fuzzy operator (1 for AND, 2 for OR)
    % Fonte: https://www.mathworks.com/help/fuzzy/working-from-the-command-line.html

    ListaDeRegras = [ ...   
5	5	5	1	1	1	1
5	5	4	1	1	1	1
5	5	3	1	1	1	1
5	5	2	1	1	1	1
5	5	1	5	1	1	1
5	5	1	4	1	1	1
5	5	1	3	1	1	1
5	5	1	2	1	1	1
5	5	1	1	1	1	1
5	4	5	1	1	1	1
5	4	4	1	1	1	1
5	4	3	1	1	1	1
5	4	2	1	1	1	1
5	4	1	5	1	1	1
5	4	1	4	1	1	1
5	4	1	3	1	1	1
5	4	1	2	1	1	1
5	4	1	1	1	1	1
5	3	5	1	1	1	1
5	3	4	1	1	1	1
5	3	3	1	1	1	1
5	3	2	1	1	1	1
5	3	1	5	1	1	1
5	3	1	4	1	1	1
5	3	1	3	1	1	1
5	3	1	2	1	1	1
5	3	1	1	1	1	1
5	2	5	1	1	1	1
5	2	4	1	1	1	1
5	2	3	1	1	1	1
5	2	2	1	1	1	1
5	2	1	5	1	1	1
5	2	1	4	1	1	1
5	2	1	3	1	1	1
5	2	1	2	1	1	1
5	2	1	1	1	1	1
5	1	5	5	1	1	1
5	1	5	4	1	1	1
5	1	5	3	1	1	1
5	1	5	2	1	1	1
5	1	5	1	1	1	1
5	1	4	5	1	1	1
5	1	4	4	1	1	1
5	1	4	3	1	1	1
5	1	4	2	1	1	1
5	1	4	1	1	1	1
5	1	3	5	1	1	1
5	1	3	4	1	1	1
5	1	3	3	1	1	1
5	1	3	2	1	1	1
5	1	3	1	1	1	1
5	1	2	5	1	1	1
5	1	2	4	1	1	1
5	1	2	3	1	1	1
5	1	2	2	1	1	1
5	1	2	1	1	1	1
5	1	1	5	1	1	1
5	1	1	4	1	1	1
5	1	1	3	1	1	1
5	1	1	2	1	1	1
5	1	1	1	1	1	1
4	5	5	1	1	1	1
4	5	4	1	1	1	1
4	5	3	1	1	1	1
4	5	2	1	1	1	1
4	5	1	5	1	1	1
4	5	1	4	1	1	1
4	5	1	3	1	1	1
4	5	1	2	1	1	1
4	5	1	1	1	1	1
4	4	5	1	1	1	1
4	4	4	1	1	1	1
4	4	3	1	1	1	1
4	4	2	1	1	1	1
4	4	1	5	1	1	1
4	4	1	4	1	1	1
4	4	1	3	1	1	1
4	4	1	2	1	1	1
4	4	1	1	1	1	1
4	3	5	1	1	1	1
4	3	4	1	1	1	1
4	3	3	1	1	1	1
4	3	2	1	1	1	1
4	3	1	5	1	1	1
4	3	1	4	1	1	1
4	3	1	3	1	1	1
4	3	1	2	1	1	1
4	3	1	1	1	1	1
4	2	5	1	1	1	1
4	2	4	1	1	1	1
4	2	3	1	1	1	1
4	2	2	1	1	1	1
4	2	1	5	1	1	1
4	2	1	4	1	1	1
4	2	1	3	1	1	1
4	2	1	2	1	1	1
4	2	1	1	1	1	1
4	1	5	5	1	1	1
4	1	5	4	1	1	1
4	1	5	3	1	1	1
4	1	5	2	1	1	1
4	1	5	1	1	1	1
4	1	4	5	1	1	1
4	1	4	4	1	1	1
4	1	4	3	1	1	1
4	1	4	2	1	1	1
4	1	4	1	1	1	1
4	1	3	5	1	1	1
4	1	3	4	1	1	1
4	1	3	3	1	1	1
4	1	3	2	1	1	1
4	1	3	1	1	1	1
4	1	2	5	1	1	1
4	1	2	4	1	1	1
4	1	2	3	1	1	1
4	1	2	2	1	1	1
4	1	2	1	1	1	1
4	1	1	5	1	1	1
4	1	1	4	1	1	1
4	1	1	3	1	1	1
4	1	1	2	1	1	1
4	1	1	1	1	1	1
3	5	5	1	1	1	1
3	5	4	1	1	1	1
3	5	3	1	1	1	1
3	5	2	1	1	1	1
3	5	1	5	1	1	1
3	5	1	4	1	1	1
3	5	1	3	1	1	1
3	5	1	1	1	1	1
3	4	5	1	1	1	1
3	4	4	1	1	1	1
3	4	3	1	1	1	1
3	4	2	1	1	1	1
3	4	1	5	1	1	1
3	4	1	4	1	1	1
3	4	1	3	1	1	1
3	4	1	2	1	1	1
3	4	1	1	1	1	1
3	3	5	1	1	1	1
3	3	4	1	1	1	1
3	3	3	1	1	1	1
3	3	2	1	1	1	1
3	3	1	5	1	1	1
3	3	1	4	1	1	1
3	3	1	3	1	1	1
3	3	1	2	1	1	1
3	3	1	1	1	1	1
3	2	5	1	1	1	1
3	2	4	1	1	1	1
3	2	3	1	1	1	1
3	2	2	1	1	1	1
3	2	1	5	1	1	1
3	2	1	4	1	1	1
3	2	1	3	1	1	1
3	2	1	2	1	1	1
3	2	1	1	1	1	1
3	1	5	5	1	1	1
3	1	5	4	1	1	1
3	1	5	3	1	1	1
3	1	5	2	1	1	1
3	1	5	1	1	1	1
3	1	4	5	1	1	1
3	1	4	4	1	1	1
3	1	4	3	1	1	1
3	1	4	2	1	1	1
3	1	4	1	1	1	1
3	1	3	5	1	1	1
3	1	3	4	1	1	1
3	1	3	3	1	1	1
3	1	3	2	1	1	1
3	1	3	1	1	1	1
3	1	2	5	1	1	1
3	1	2	4	1	1	1
3	1	2	3	1	1	1
3	1	2	2	1	1	1
3	1	2	1	1	1	1
3	1	1	5	1	1	1
3	1	1	4	1	1	1
3	1	1	3	1	1	1
3	1	1	2	1	1	1
3	1	1	1	1	1	1
2	5	5	1	1	1	1
2	5	4	1	1	1	1
2	5	3	1	1	1	1
2	5	2	1	1	1	1
2	5	1	4	1	1	1
2	5	1	3	1	1	1
2	5	1	1	1	1	1
2	4	5	1	1	1	1
2	4	4	1	1	1	1
2	4	3	1	1	1	1
2	4	2	1	1	1	1
2	4	1	5	1	1	1
2	4	1	4	1	1	1
2	4	1	3	1	1	1
2	4	1	2	1	1	1
2	4	1	1	1	1	1
2	3	5	1	1	1	1
2	3	4	1	1	1	1
2	3	3	1	1	1	1
2	3	2	1	1	1	1
2	3	1	5	1	1	1
2	3	1	4	1	1	1
2	3	1	3	1	1	1
2	3	1	2	1	1	1
2	3	1	1	1	1	1
2	2	5	1	1	1	1
2	2	4	1	1	1	1
2	2	3	1	1	1	1
2	2	2	1	1	1	1
2	2	1	5	1	1	1
2	2	1	4	1	1	1
2	2	1	3	1	1	1
2	2	1	2	1	1	1
2	2	1	1	1	1	1
2	1	5	5	1	1	1
2	1	5	4	1	1	1
2	1	5	3	1	1	1
2	1	5	2	1	1	1
2	1	5	1	1	1	1
2	1	4	5	1	1	1
2	1	4	4	1	1	1
2	1	4	3	1	1	1
2	1	4	2	1	1	1
2	1	4	1	1	1	1
2	1	3	5	1	1	1
2	1	3	4	1	1	1
2	1	3	3	1	1	1
2	1	3	2	1	1	1
2	1	3	1	1	1	1
2	1	2	5	1	1	1
2	1	2	4	1	1	1
2	1	2	3	1	1	1
2	1	2	2	1	1	1
2	1	2	1	1	1	1
2	1	1	5	1	1	1
2	1	1	4	1	1	1
2	1	1	3	1	1	1
2	1	1	2	1	1	1
2	1	1	1	1	1	1
1	5	5	5	1	1	1
1	5	5	4	1	1	1
1	5	5	3	1	1	1
1	5	5	2	1	1	1
1	5	5	1	1	1	1
1	5	4	5	1	1	1
1	5	4	4	1	1	1
1	5	4	3	1	1	1
1	5	4	2	1	1	1
1	5	4	1	1	1	1
1	5	3	5	1	1	1
1	5	3	4	1	1	1
1	5	3	3	1	1	1
1	5	3	2	1	1	1
1	5	3	1	1	1	1
1	5	2	5	1	1	1
1	5	2	4	1	1	1
1	5	2	3	1	1	1
1	5	2	2	1	1	1
1	5	2	1	1	1	1
1	5	1	5	1	1	1
1	5	1	4	1	1	1
1	5	1	3	1	1	1
1	5	1	2	1	1	1
1	5	1	1	1	1	1
1	4	5	5	1	1	1
1	4	5	4	1	1	1
1	4	5	3	1	1	1
1	4	5	2	1	1	1
1	4	5	1	1	1	1
1	4	4	5	1	1	1
1	4	4	4	1	1	1
1	4	4	3	1	1	1
1	4	4	2	1	1	1
1	4	4	1	1	1	1
1	4	3	5	1	1	1
1	4	3	4	1	1	1
1	4	3	3	1	1	1
1	4	3	2	1	1	1
1	4	3	1	1	1	1
1	4	2	5	1	1	1
1	4	2	4	1	1	1
1	4	2	3	1	1	1
1	4	2	2	1	1	1
1	4	2	1	1	1	1
1	4	1	5	1	1	1
1	4	1	4	1	1	1
1	4	1	3	1	1	1
1	4	1	2	1	1	1
1	4	1	1	1	1	1
1	3	5	5	1	1	1
1	3	5	4	1	1	1
1	3	5	3	1	1	1
1	3	5	2	1	1	1
1	3	5	1	1	1	1
1	3	4	5	1	1	1
1	3	4	4	1	1	1
1	3	4	3	1	1	1
1	3	4	2	1	1	1
1	3	4	1	1	1	1
1	3	3	5	1	1	1
1	3	3	4	1	1	1
1	3	3	3	1	1	1
1	3	3	2	1	1	1
1	3	3	1	1	1	1
1	3	2	5	1	1	1
1	3	2	4	1	1	1
1	3	2	3	1	1	1
1	3	2	2	1	1	1
1	3	2	1	1	1	1
1	3	1	5	1	1	1
1	3	1	4	1	1	1
1	3	1	3	1	1	1
1	3	1	2	1	1	1
1	3	1	1	1	1	1
1	2	5	5	1	1	1
1	2	5	4	1	1	1
1	2	5	3	1	1	1
1	2	5	2	1	1	1
1	2	5	1	1	1	1
1	2	4	5	1	1	1
1	2	4	4	1	1	1
1	2	4	3	1	1	1
1	2	4	2	1	1	1
1	2	4	1	1	1	1
1	2	3	5	1	1	1
1	2	3	4	1	1	1
1	2	3	3	1	1	1
1	2	3	2	1	1	1
1	2	3	1	1	1	1
1	2	2	5	1	1	1
1	2	2	4	1	1	1
1	2	2	3	1	1	1
1	2	2	2	1	1	1
1	2	2	1	1	1	1
1	2	1	5	1	1	1
1	2	1	4	1	1	1
1	2	1	3	1	1	1
1	2	1	2	1	1	1
1	2	1	1	1	1	1
1	1	5	5	1	1	1
1	1	5	4	1	1	1
1	1	5	3	1	1	1
1	1	5	2	1	1	1
1	1	5	1	1	1	1
1	1	4	5	1	1	1
1	1	4	4	1	1	1
1	1	4	3	1	1	1
1	1	4	2	1	1	1
1	1	4	1	1	1	1
1	1	3	5	1	1	1
1	1	3	4	1	1	1
1	1	3	3	1	1	1
1	1	3	2	1	1	1
1	1	3	1	1	1	1
1	1	2	5	1	1	1
1	1	2	4	1	1	1
1	1	2	3	1	1	1
1	1	2	2	1	1	1
1	1	2	1	1	1	1
1	1	1	5	1	1	1
1	1	1	4	1	1	1
1	1	1	3	1	1	1
1	1	1	2	1	1	1
1	1	1	1	1	1	1
5	5	5	5	3	1	1
5	5	5	4	3	1	1
5	5	5	3	3	1	1
5	5	4	5	3	1	1
5	5	4	4	3	1	1
5	5	4	3	3	1	1
5	5	3	5	3	1	1
5	5	3	4	3	1	1
5	5	3	3	3	1	1
5	4	5	5	3	1	1
5	4	5	4	3	1	1
5	4	5	3	3	1	1
5	4	4	5	3	1	1
5	4	4	4	3	1	1
5	4	4	3	3	1	1
5	4	3	5	3	1	1
5	4	3	4	3	1	1
5	4	3	3	3	1	1
5	3	5	5	3	1	1
5	3	5	4	3	1	1
5	3	5	3	3	1	1
5	3	4	5	3	1	1
5	3	4	4	3	1	1
5	3	4	3	3	1	1
5	3	3	5	3	1	1
5	3	3	4	3	1	1
5	3	3	3	3	1	1
5	3	2	5	3	1	1
4	5	5	5	3	1	1
4	5	5	4	3	1	1
4	5	5	3	3	1	1
4	5	4	5	3	1	1
4	5	4	4	3	1	1
4	5	4	3	3	1	1
4	5	3	5	3	1	1
4	5	3	4	3	1	1
4	5	3	3	3	1	1
4	4	5	5	3	1	1
4	4	5	4	3	1	1
4	4	5	3	3	1	1
4	4	4	5	3	1	1
4	4	4	4	3	1	1
4	4	4	3	3	1	1
4	4	3	5	3	1	1
4	4	3	4	3	1	1
4	4	3	3	3	1	1
4	3	5	5	3	1	1
4	3	5	4	3	1	1
4	3	5	3	3	1	1
4	3	4	5	3	1	1
4	3	4	4	3	1	1
4	3	4	3	3	1	1
4	3	3	5	3	1	1
4	3	3	4	3	1	1
4	3	3	3	3	1	1
3	5	5	5	3	1	1
3	5	5	4	3	1	1
3	5	5	3	3	1	1
3	5	4	5	3	1	1
3	5	4	4	3	1	1
3	5	4	3	3	1	1
3	5	3	5	3	1	1
3	5	3	4	3	1	1
3	5	3	3	3	1	1
3	4	5	5	3	1	1
3	4	5	4	3	1	1
3	4	5	3	3	1	1
3	4	4	5	3	1	1
3	4	4	4	3	1	1
3	4	4	3	3	1	1
3	4	3	5	3	1	1
3	4	3	4	3	1	1
3	4	3	3	3	1	1
3	3	5	5	3	1	1
3	3	5	4	3	1	1
3	3	5	3	3	1	1
3	3	4	5	3	1	1
3	3	4	4	3	1	1
3	3	4	3	3	1	1
3	3	3	5	3	1	1
3	3	3	4	3	1	1
3	3	3	3	3	1	1

    ];
    fis = addrule(fis,ListaDeRegras);

    %% C�lculo da sa�da
    saidaF =  evalfis([MAVT, MAVP, Assi, Rel], fis);    
    
    %% Plots
    if (verificarToolBox == 1)
    fuzzy(fis);
    figure (1)
    title("Conhecimento te�rico");
    plotmf(fis,'input',1);
    figure (2)
    title("Conhecimento t�cnico (pr�tico)");
    plotmf(fis,'input',2);
    figure (3)
    title("Assiduidade");
    plotmf(fis,'input',3);
    figure (4)
    title("Relacionamento Interpessoal");
    plotmf(fis,'input',4);
    figure (5)
    gensurf(fis);
    ruleedit(fis);
    end

end