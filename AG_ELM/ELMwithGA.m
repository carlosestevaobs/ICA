%% ELM (Extreme Learning Machines) com podagem de neur�nios atrav�s de GA (Genetic Algorithm) 
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o Bastos Sousa
% Docente: Ajalmar R. Rocha Neto

    clear;                                                      % Limpa o Workspace
    close all;                                                  % Fecha todas as janelas
    clc;      
    tic
%% Par�metros iniciais
    Base = readtable('column_3c.dat'); 
    QtdeEntradas = size(Base,1);
    Base = Base(randperm(QtdeEntradas),:); 
    QtdeAtributos = size(Base,2)-1; 
    Dados = Base{:,1:QtdeAtributos};
    ClassesCategoricas = categorical(Base{:,size(Base,2):size(Base,2)});  
    Saida = grp2idx(ClassesCategoricas);  
    QtdeClasses = size(unique(Saida), 1);  
    
% ImprimirGrafico(Base{:,1:2}, Saida)

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
    NTreino = QtdeEntradas * 0.8;                           % 80% para treino
    NTeste = QtdeEntradas - NTreino;                        % 20% para teste
    DadosTreino = Dados(1:NTreino,:);
    SaidasTreino = SaidaBinaria(1:NTreino,:);
    DadosTeste = Dados(NTreino + 1:QtdeEntradas,:);
    SaidasTeste = SaidaBinaria(NTreino + 1:QtdeEntradas,:);
    N_Neuronios = 30;  
    pesos = rand(N_Neuronios, QtdeAtributos);            
    bias = rand(N_Neuronios, 1);
    TamPopulacao = 50;
    pesosEscolhidos = IniciaPopulacao(N_Neuronios, TamPopulacao);
    percentualMutacao = 0.1;
    percentualCruzamento = 1;
    geracoes = 10;
    
for l = 1: geracoes    
    disp("Gera��o: "+ l);    
    for k = 1: TamPopulacao
        contaMutacoes = 0;

    %% Faz a poda de acordo com a popula��o
        pesosNovos = pesos;
        for i = 1: N_Neuronios       
           if (pesosEscolhidos(k,i,:) ~= 1)       
               pesosNovos(i,:) = zeros();
           end       
        end 
%         pesosEscolhidos(k,:)
%         pesosNovos

     %% Treinamento
        H_Treino = [];
        [SaidaCalculada, H_Treino, beta] = Treinamento(NTreino, pesosNovos, DadosTreino, bias, SaidasTreino);

    %% Teste
        H_Teste = [];    
        SaidaTeste = Teste(NTeste, pesosNovos, DadosTeste, bias, beta, QtdeClasses);

    %% C�lculo da acur�cia/Fitness
       fitness(k,:) = Fitness(NTeste, SaidaTeste, SaidasTeste);   
    end
    %% Muta��o    
        probmutacao = rand;
        if (probmutacao <= percentualMutacao)  
           disp("----------------- MUTA��O -----------------");
           individuo = randi([1 TamPopulacao],1);                         % Sorteio do indiv�duo para a muta��o 
           disp("Muta��o no indiv�duo: "+ individuo);
           pesosEscolhidos(individuo,:)
           pesosEscolhidos = Mutacao(pesosEscolhidos, individuo, N_Neuronios);
           contaMutacoes = contaMutacoes + 1;
           pesosEscolhidos(individuo,:)
           disp("-------------------------------------------");
        end    
    fitness(k,:)    
    %% Cruzamento 
        probcruzamento = rand;
            if (probcruzamento <= percentualCruzamento)  
                disp("----------------- CRUZAMENTO -----------------");
                pesosEscolhidos = Cruzamento(pesosEscolhidos,  fitness);
                disp("----------------------------------------------");  
            end 
            
     %% Encontrando o melhor ind�viduo por gera��o  
     fitness
     [acuracia individuo] = max(fitness)
     pesosEscolhidos(individuo,:)
     
end

    
%% Plotagem da matriz de confus�o
    figure (2)
    plotconfusion(SaidasTeste' , SaidaTeste' );
    title("Dados da classifica��o")
    xlabel("Sa�das corretas")
    ylabel("Sa�das calculadas")
    set(gca,'yticklabel',{'classe 1' 'classe 2' 'classe 3' ''})
    set(gca,'xticklabel',{'classe 1' 'classe 2' 'classe 3' 'Acur�cia'})
    toc
%% M�todos da ELM    
    %% Treinamento
    function [SaidaCalculada, H_Treino, beta] = Treinamento(NTreino, pesosNovos, DadosTreino, bias, SaidasTreino)
    for i = 1: NTreino
        SaidaCalculada = pesosNovos * DadosTreino(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);           % Fun��o sigmoide
        H_Treino(:,i) = SaidaCalculada;
    end
    H_Treino = H_Treino';
    beta = pinv(H_Treino) * SaidasTreino;
end

    %% Testes
    function SaidaTeste = Teste(NTeste, pesosNovos, DadosTeste, bias, beta, QtdeClasses)
    for i = 1: NTeste
        SaidaCalculada = pesosNovos * DadosTeste(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);           % Fun��o sigmoide
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
end
        
%% M�todos do AG
    %% Inicia Popula��o
    function Populacao = IniciaPopulacao(N_Neuronios, TamPopulacao)
        for i = 1: TamPopulacao 
            Populacao(i,:) = randi([0 1],1,N_Neuronios);
        end
   end

    %% Muta��o
    function Pesos = Mutacao(pesos, individuo, N_Neuronios)        
        max = N_Neuronios;
        gene = randi([1 max],1)
        if (pesos(individuo,gene,:)) == 1
            pesos(individuo,gene,:) = 0;        
        else
            pesos(individuo,gene,:) = 1;        
        end
        Pesos = pesos;                              
    end
  
    %% Fitness        
    function fitness = Fitness(NTeste, SaidaTeste, SaidasTeste)
         x = 0;
        for i = 1: NTeste
            if(SaidaTeste(i,:) == SaidasTeste(i,:))
                x = x + 1;
            end
        end
        fitness = x/NTeste;      
    end
    
    %% Cruzamento
    function Populacao = Cruzamento(pesos, fitness) 
        pesos
        fitness
        total = sum(fitness)
        for i = 1: size(pesos, 1)
            probabilidade(:,i) = (fitness(i,:) * 100)/total;  
             if (i > 1)
                numeracao(:,i+1) = numeracao(:,i) + probabilidade(:,i);    % valor obtido atrav�s de seu percentual
            else
                numeracao(:,i+1) = probabilidade(:,i);                     % valor obtido atrav�s de seu percentual
            end
        end   
        %% Sorteio (uso da roleta)        
        ValorIndividuo1 = (100-1).*rand(1,1) + 1;
        ValorIndividuo2 = (100-1).*rand(1,1) + 1;
        individuo1 = 0;
        individuo2 = 0;

        %% Pega a linha do indiv�duo
        for j = 1: size(pesos, 1)
            if (ValorIndividuo1 >= numeracao(:,j) && ValorIndividuo1 <= numeracao(:,j+1))
                individuo1 = j;
            end
            if (ValorIndividuo2 >= numeracao(:,j) && ValorIndividuo2 <= numeracao(:,j+1))
                individuo2 = j;
            end
        end
        
       [~, MaisFraco] = min(fitness)

        %% O cruzamento - (Ponto de cruzamento �nico)
        PontoDeCruzamento = randi([1 size(pesos,2)],1);               
        for k = 1: size(pesos, 2)
            if (k <= PontoDeCruzamento) 
                pesos(MaisFraco, k, :) = pesos(individuo1, k, :); 
            else
                pesos(MaisFraco, k, :) = pesos(individuo2, k, :); 
            end
        end
        %% Dados do cruzamento
        disp("Ponto de cruzamento: ")
        PontoDeCruzamento
        disp("Pais: ");
        individuo1
        fitness(individuo1,:)
        pesos(individuo1,:)
        individuo2
        fitness(individuo2,:)
        pesos(individuo2,:)
        disp("Filho: "+ MaisFraco);
        pesos(MaisFraco,:) 
        % retorno dos novos pesos
        Populacao = pesos;  
    end    