%% ELM (Extreme Learning Machines)  
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o Bastos Sousa
% Docente: Ajalmar R. Rocha Neto

    clear;                                                      % Limpa o Workspace
    close all;                                                  % Fecha todas as janelas
    clc;      
    tic    
%% Par�metros iniciais
    Base = readtable('column_3C.dat'); 
    QtdeEntradas = size(Base,1);
    Base = Base(randperm(QtdeEntradas),:); 
    QtdeAtributos = size(Base,2)-1; 
    Dados = Base{:,1:QtdeAtributos};
    ClassesCategoricas = categorical(Base{:,size(Base,2):size(Base,2)});  
    Saida = grp2idx(ClassesCategoricas);  
    QtdeClasses = size(unique(Saida), 1);   

%% Padroniza��o dos dados
    for i = 1:QtdeAtributos
        Dados(:, i) = ((Dados(:, i) - mean(Dados(:, i)))/std(Dados(:, i)));
    end

%% Organiza��o das Sa�das
    SaidaBinaria = zeros(QtdeEntradas,QtdeClasses);
    for x = 1: QtdeEntradas
         SaidaBinaria(x, Saida(x)) = 1;
    end
    
%% Par�metros iniciais
    NTreino = QtdeEntradas * 0.8;                       % 80% para treino
    NTeste = QtdeEntradas-NTreino;                      % 20% para teste
    DadosTreino = Dados(1:NTreino,:);
    SaidasTreino = SaidaBinaria(1:NTreino,:);
    DadosTeste = Dados(NTreino+1:QtdeEntradas,:);
    SaidasTeste = SaidaBinaria(NTreino+1:QtdeEntradas,:);
    N_Neuronios = 30;  
    pesos = rand(N_Neuronios,QtdeAtributos);            
    bias = rand(N_Neuronios,1);

%% Treino
    for i=1:NTreino
        SaidaCalculada = pesos * DadosTreino(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);
        H_Treino(:,i) = SaidaCalculada;
    end
    H_Treino = H_Treino';
    beta = pinv(H_Treino) * SaidasTreino;

%% Teste
    DadosTeste(1,:);
    for i = 1: NTeste
        SaidaCalculada = pesos * DadosTeste(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);
        H_Teste(:,i) = SaidaCalculada;
    end
    H_Teste = H_Teste';
    SaidaTeste = H_Teste * beta;
    
%% Transforma��o da Saida do Teste em Sa�da Bin�ria
    for i = 1:NTeste
        maior = max(SaidaTeste(i,:));
        for j = 1:QtdeClasses
            if(SaidaTeste(i,j) == maior)
                SaidaTeste(i,j) = 1;
            else
                SaidaTeste(i,j) = 0;
            end
        end
    end

%% C�lculo da acur�cia
    x = 0;
    for i = 1: NTeste
        if(SaidaTeste(i,:) == SaidasTeste(i,:))
            x = x + 1;
        end
    end
    acuracia = x/NTeste

%% Plotagem da matriz de confus�o
    plotconfusion(SaidasTeste' , SaidaTeste' );
    title("Dados da classifica��o")
    xlabel("Sa�das corretas")
    ylabel("Sa�das calculadas")
    set(gca,'yticklabel',{'classe 1' 'classe 2' 'classe 3' 'Acerto Total'})
    set(gca,'xticklabel',{'classe 1' 'classe 2' 'classe 3' 'Acur�cia'})
    toc