%% SLP (Single Layer Perceptron) com atualiza��o de pesos atrav�s de GA (Genetic Algorithm) para Resolu��o da Sa�da da Porta AND 

clear;                                                      % Limpa o Workspace
close all;                                                  % Fecha todas as janelas
clc;                                                        % Limpa o Command Window

%% Par�metros iniciais
entradas = [0 0; 0 1; 1 0; 1 1];
Solucoes = 2;                                              % N�mero de solu��es requeridas
quantidadePesos = 2;
pesos = IniciaPopulacao(Solucoes, quantidadePesos);
saida = [0; 0; 0; 1];
TaxaApren = 0.1;
percentualMutacao = 0.1;                                    % Probabilidade de muta��o - 1% 
percentualCruzamento = 0.8;                                 % Probabilidade de cruzamento - 80%


%% Execu��o do treinamento
PesosAtualizados = treinar(entradas, pesos, saida, Solucoes, percentualMutacao, percentualCruzamento, quantidadePesos);

%% M�todos do Perceptron

    %% Treinamento
    function pesosAtualizados = treinar(entradas, pesos, saida,tamanhoPopulacao, percentualMutacao, percentualCruzamento, quantidadePesos)
        contaMutacoes = 0;
        ErroTotal = 1;
        iteracao = 1;
        while (ErroTotal ~= 0)
            disp("Execu��o "+ iteracao);            
           for i = 1:size(saida, 2)  
               ErroTotal = 0; 
               for j = 1: size(pesos, 1)
                  SaidaCal(j,:) = entradas * pesos(j,:)';
               end
               %% Recebimento das sa�das calculadas atrav�s da fun��o StepFunction  
               SaidaCalculada = StepFunction(SaidaCal')        
               
               % verifica o erro - funcionando          
               erro = abs(saida(:,i) - SaidaCalculada)            
           
                %% Atualiza��o dos pesos
                %% verificar fitness 
                 for j = 1: size(erro, 2)
                    FFitness(:,j) = Fitness(erro(:,j), size(saida, 1));                            % neste caso, quanto menor o fitness melhor � o indiv�duo                    
                 end                                   
                 
                %% Cruzamento
                probcruzamento = rand;
                if (probcruzamento <= percentualCruzamento)  
                    disp("----------------- CRUZAMENTO -----------------");
                    pesos = Cruzamento(pesos, FFitness, quantidadePesos);
                    disp("----------------------------------------------");                
                end
                
                %% Muta��o - fazer o percentual     
                 probmutacao = rand;
                if (probmutacao <= percentualMutacao)                    
                    disp("----------------- MUTA��O -----------------");
                    individuo = randi([1 tamanhoPopulacao],1);                         % Sorteio do indiv�duo para a muta��o 
                    disp("Muta��o no indiv�duo: "+ individuo);
                    pesos = Mutacao(pesos, individuo);
                    contaMutacoes = contaMutacoes + 1;
                    disp("-------------------------------------------");
                end               
                
                %% C�lculo do erro
                ErroTotal = sum(sum(erro));
                disp("Erros encontrados: "+ErroTotal);
                disp(" ");        
           end 
           iteracao = iteracao + 1;
        end
        pesosAtualizados = pesos;
        disp("Quantidade de muta��es: "+ contaMutacoes)
    end   
        
    %% Step Function
    function SaidasBinarias = StepFunction(SaidaCalculada)  
        for k = 1:size(SaidaCalculada, 1) 
            for l = 1: size(SaidaCalculada, 2)
                if (SaidaCalculada(k,l) >= 1)
                    SaidaCalculada(k,l) = 1;
                else
                    SaidaCalculada(k,l) = 0;
                end
            end
        end
        SaidasBinarias = SaidaCalculada;
    end

%% M�todos do Algoritmo Gen�tico
    %% Inicia Popula��o
    function Pesos = IniciaPopulacao(tamanhoPopulacao, quantidadePesos)         
        for i = 1: tamanhoPopulacao  
            Pesos(i,:) = rand(1,quantidadePesos);
        end    
    end

    %% Fitness
    function fitness = Fitness(erro, saida)
        fitness = saida - sum(erro);         
    end
    
    %% Cruzamento
    function Populacao = Cruzamento(pesos, fitness, quantidadePesos)        
%         fitness %% <- verificar melhor a aptid�o
        total = sum(fitness); 
        numeracao = zeros(1, size(pesos,1));
        for i = 1: size(pesos, 1)
            probabilidade(:,i) = (fitness(:,i) * 100)/total;                % probabilidade de cruzamento
            if (i > 1)
                numeracao(:,i+1) = numeracao(:,i) + probabilidade(:,i);    % valor obtido atrav�s de seu percentual
            else
                numeracao(:,i+1) = probabilidade(:,i);                        % valor obtido atrav�s de seu percentual
            end
        end
               
        %% Plot da roleta        
%         pie(probabilidade);
%         title("Probablidade de escolha para cruzamento");  
        
        %% Sorteio        
        ValorIndividuo1 = (100-1).*rand(1,1) + 1;
        ValorIndividuo2 = (100-1).*rand(1,1) + 1;
        individuo1 = 0;
        individuo2 = 0;
        for j = 1: size(pesos, 1)
            if (ValorIndividuo1 >= numeracao(:,j) && ValorIndividuo1 <= numeracao(:,j+1))
                individuo1 = j;
            end
            if (ValorIndividuo2 >= numeracao(:,j) && ValorIndividuo2 <= numeracao(:,j+1))
                individuo2 = j;
            end
        end
 
        %% Cruza e elimina um indiv�duo fraco e o substitui pelo filho dos indiv�duos anteriormente cruzados
        Posicao1 = randi([1 quantidadePesos],1);
        Posicao2 = randi([1 quantidadePesos],1);
        % garantir que n�o se repita a posi��o (para o caso de mais pesos)
        while (Posicao1 == Posicao2)
            Posicao2 = randi([1 quantidadePesos],1);
        end        
        [~, MaisFraco] = min(fitness);
        disp("Indiv�duo eliminado")        
        pesos(MaisFraco,:)
        pesos(MaisFraco, Posicao1,:) = pesos(individuo1,Posicao1,:); 
        pesos(MaisFraco, Posicao2,:) = pesos(individuo2,Posicao2,:);
        disp("Pais: ")
        pesos(individuo1,:)
        pesos(individuo2,:)
        disp("Filho: ") 
        pesos(MaisFraco,:)      
        
        % retorno dos novos pesos
        Populacao = pesos;    
    end
    
    %% Muta��o
    function Pesos = Mutacao(pesos, l)        
        min = 1;
        max = size(pesos, 2);
        c = randi([min max],1);         % peso (gene) sorteado para ser alterado
        disp("Gene: "+ c);
        valor = rand(1);                % valor a ser inserido no peso escolhido  
        pesos(l, c,:) = valor;          % peso recebendo a muta��o
        Pesos = pesos;                  % passando os pesos novos para o treino       
    end
