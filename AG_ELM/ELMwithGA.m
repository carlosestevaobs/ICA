%% ELM (Extreme Learning Machines) com podagem de neurônios através de GA (Genetic Algorithm) 
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão Bastos Sousa
% Docente: Ajalmar R. Rocha Neto

    clear;                                                      % Limpa o Workspace
    close all;                                                  % Fecha todas as janelas
    clc;      
    tic
%% Parâmetros iniciais
    Base = readtable('column_3c.dat'); 
    QtdeEntradas = size(Base,1);
    Base = Base(randperm(QtdeEntradas),:); 
    QtdeAtributos = size(Base,2)-1; 
    Dados = Base{:,1:QtdeAtributos};
    ClassesCategoricas = categorical(Base{:,size(Base,2):size(Base,2)});  
    Saida = grp2idx(ClassesCategoricas);  
    QtdeClasses = size(unique(Saida), 1);  
    
% ImprimirGrafico(Base{:,1:2}, Saida)

%% Padronização dos dados
    for i = 1:QtdeAtributos
        Dados(:, i) = ((Dados(:, i) - mean(Dados(:, i)))/std(Dados(:, i)));
    end

%% Organização das Saídas
    SaidaBinaria = zeros(QtdeEntradas,QtdeClasses);
    for x = 1: QtdeEntradas
         SaidaBinaria(x, Saida(x)) = 1;
    end
    
%% Parâmetros iniciais
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
    disp("Geração: "+ l);    
    for k = 1: TamPopulacao
        contaMutacoes = 0;

    %% Faz a poda de acordo com a população
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

    %% Cálculo da acurácia/Fitness
       fitness(k,:) = Fitness(NTeste, SaidaTeste, SaidasTeste);   
    end
    %% Mutação    
        probmutacao = rand;
        if (probmutacao <= percentualMutacao)  
           disp("----------------- MUTAÇÃO -----------------");
           individuo = randi([1 TamPopulacao],1);                         % Sorteio do indivíduo para a mutação 
           disp("Mutação no indivíduo: "+ individuo);
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
            
     %% Encontrando o melhor indíviduo por geração  
     fitness
     [acuracia individuo] = max(fitness)
     pesosEscolhidos(individuo,:)
     
end

    
%% Plotagem da matriz de confusão
    figure (2)
    plotconfusion(SaidasTeste' , SaidaTeste' );
    title("Dados da classificação")
    xlabel("Saídas corretas")
    ylabel("Saídas calculadas")
    set(gca,'yticklabel',{'classe 1' 'classe 2' 'classe 3' ''})
    set(gca,'xticklabel',{'classe 1' 'classe 2' 'classe 3' 'Acurácia'})
    toc
%% Métodos da ELM    
    %% Treinamento
    function [SaidaCalculada, H_Treino, beta] = Treinamento(NTreino, pesosNovos, DadosTreino, bias, SaidasTreino)
    for i = 1: NTreino
        SaidaCalculada = pesosNovos * DadosTreino(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);           % Função sigmoide
        H_Treino(:,i) = SaidaCalculada;
    end
    H_Treino = H_Treino';
    beta = pinv(H_Treino) * SaidasTreino;
end

    %% Testes
    function SaidaTeste = Teste(NTeste, pesosNovos, DadosTeste, bias, beta, QtdeClasses)
    for i = 1: NTeste
        SaidaCalculada = pesosNovos * DadosTeste(i,:)'+ bias;
        SaidaCalculada = sigmf(SaidaCalculada,[1 0]);           % Função sigmoide
        H_Teste(:,i) = SaidaCalculada;
    end
    H_Teste = H_Teste';
    SaidaTeste = H_Teste * beta;
    
    %% Transformação da Saida do Teste em Saída Binária
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
        
%% Métodos do AG
    %% Inicia População
    function Populacao = IniciaPopulacao(N_Neuronios, TamPopulacao)
        for i = 1: TamPopulacao 
            Populacao(i,:) = randi([0 1],1,N_Neuronios);
        end
   end

    %% Mutação
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
                numeracao(:,i+1) = numeracao(:,i) + probabilidade(:,i);    % valor obtido através de seu percentual
            else
                numeracao(:,i+1) = probabilidade(:,i);                     % valor obtido através de seu percentual
            end
        end   
        %% Sorteio (uso da roleta)        
        ValorIndividuo1 = (100-1).*rand(1,1) + 1;
        ValorIndividuo2 = (100-1).*rand(1,1) + 1;
        individuo1 = 0;
        individuo2 = 0;

        %% Pega a linha do indivíduo
        for j = 1: size(pesos, 1)
            if (ValorIndividuo1 >= numeracao(:,j) && ValorIndividuo1 <= numeracao(:,j+1))
                individuo1 = j;
            end
            if (ValorIndividuo2 >= numeracao(:,j) && ValorIndividuo2 <= numeracao(:,j+1))
                individuo2 = j;
            end
        end
        
       [~, MaisFraco] = min(fitness)

        %% O cruzamento - (Ponto de cruzamento único)
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