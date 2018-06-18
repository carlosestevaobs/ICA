%% SLP (Single Layer Perceptron) com atualização de pesos através de GA (Genetic Algorithm) para Resolução da Saída da Porta AND 

clear;                                                      % Limpa o Workspace
close all;                                                  % Fecha todas as janelas
clc;                                                        % Limpa o Command Window

%% Parâmetros iniciais
entradas = [0 0; 0 1; 1 0; 1 1];
Solucoes = 2;                                              % Número de soluções requeridas
quantidadePesos = 2;
pesos = IniciaPopulacao(Solucoes, quantidadePesos);
saida = [0; 0; 0; 1];
TaxaApren = 0.1;
percentualMutacao = 0.1;                                    % Probabilidade de mutação - 1% 
percentualCruzamento = 0.8;                                 % Probabilidade de cruzamento - 80%


%% Execução do treinamento
PesosAtualizados = treinar(entradas, pesos, saida, Solucoes, percentualMutacao, percentualCruzamento, quantidadePesos);

%% Métodos do Perceptron

    %% Treinamento
    function pesosAtualizados = treinar(entradas, pesos, saida,tamanhoPopulacao, percentualMutacao, percentualCruzamento, quantidadePesos)
        contaMutacoes = 0;
        ErroTotal = 1;
        iteracao = 1;
        while (ErroTotal ~= 0)
            disp("Execução "+ iteracao);            
           for i = 1:size(saida, 2)  
               ErroTotal = 0; 
               for j = 1: size(pesos, 1)
                  SaidaCal(j,:) = entradas * pesos(j,:)';
               end
               %% Recebimento das saídas calculadas através da função StepFunction  
               SaidaCalculada = StepFunction(SaidaCal')        
               
               % verifica o erro - funcionando          
               erro = abs(saida(:,i) - SaidaCalculada)            
           
                %% Atualização dos pesos
                %% verificar fitness 
                 for j = 1: size(erro, 2)
                    FFitness(:,j) = Fitness(erro(:,j), size(saida, 1));                            % neste caso, quanto menor o fitness melhor é o indivíduo                    
                 end                                   
                 
                %% Cruzamento
                probcruzamento = rand;
                if (probcruzamento <= percentualCruzamento)  
                    disp("----------------- CRUZAMENTO -----------------");
                    pesos = Cruzamento(pesos, FFitness, quantidadePesos);
                    disp("----------------------------------------------");                
                end
                
                %% Mutação - fazer o percentual     
                 probmutacao = rand;
                if (probmutacao <= percentualMutacao)                    
                    disp("----------------- MUTAÇÃO -----------------");
                    individuo = randi([1 tamanhoPopulacao],1);                         % Sorteio do indivíduo para a mutação 
                    disp("Mutação no indivíduo: "+ individuo);
                    pesos = Mutacao(pesos, individuo);
                    contaMutacoes = contaMutacoes + 1;
                    disp("-------------------------------------------");
                end               
                
                %% Cálculo do erro
                ErroTotal = sum(sum(erro));
                disp("Erros encontrados: "+ErroTotal);
                disp(" ");        
           end 
           iteracao = iteracao + 1;
        end
        pesosAtualizados = pesos;
        disp("Quantidade de mutações: "+ contaMutacoes)
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

%% Métodos do Algoritmo Genético
    %% Inicia População
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
%         fitness %% <- verificar melhor a aptidão
        total = sum(fitness); 
        numeracao = zeros(1, size(pesos,1));
        for i = 1: size(pesos, 1)
            probabilidade(:,i) = (fitness(:,i) * 100)/total;                % probabilidade de cruzamento
            if (i > 1)
                numeracao(:,i+1) = numeracao(:,i) + probabilidade(:,i);    % valor obtido através de seu percentual
            else
                numeracao(:,i+1) = probabilidade(:,i);                        % valor obtido através de seu percentual
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
 
        %% Cruza e elimina um indivíduo fraco e o substitui pelo filho dos indivíduos anteriormente cruzados
        Posicao1 = randi([1 quantidadePesos],1);
        Posicao2 = randi([1 quantidadePesos],1);
        % garantir que não se repita a posição (para o caso de mais pesos)
        while (Posicao1 == Posicao2)
            Posicao2 = randi([1 quantidadePesos],1);
        end        
        [~, MaisFraco] = min(fitness);
        disp("Indivíduo eliminado")        
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
    
    %% Mutação
    function Pesos = Mutacao(pesos, l)        
        min = 1;
        max = size(pesos, 2);
        c = randi([min max],1);         % peso (gene) sorteado para ser alterado
        disp("Gene: "+ c);
        valor = rand(1);                % valor a ser inserido no peso escolhido  
        pesos(l, c,:) = valor;          % peso recebendo a mutação
        Pesos = pesos;                  % passando os pesos novos para o treino       
    end
