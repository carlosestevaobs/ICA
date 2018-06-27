%% SLP (Single Layer Perceptron) com atualização de pesos através de GA (Genetic Algorithm) para Resolução da Saída da Porta AND 
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão Bastos Sousa
% Docente: Ajalmar R. Rocha Neto

    clear;                                                      % Limpa o Workspace
    close all;                                                  % Fecha todas as janelas
    clc;                                                        % Limpa o Command Window
    tic
    %% Parâmetros iniciais
    entradas =  [0.1*randn(300,2); 
                repmat([1 0], 300,1) + 0.1*randn(300,2); 
                repmat([0 1], 300,1) + 0.1*randn(300,2); 
                repmat([1 1], 300,1) + 0.1*randn(300,2)];
    saida = [zeros(900,1);ones(300,1)];

    populacao = 50;
    pesos = IniciaPopulacao(populacao, 3);
    TaxaApren = 0.0; 
      
    percentualMutacao = 0.01;                                    % Probabilidade de mutação - 1% 
    percentualCruzamento = 0.8;                                 % Probabilidade de cruzamento - 80%

%% Insere uma última coluna com o valor -1 para multiplicar com o bias
    for i = 1: size(entradas,1)
       entradas(:,3) = -1; 
    end

    %% Execução do treinamento
    PesosAtualizados = treinar(entradas, pesos, saida, populacao, percentualMutacao, percentualCruzamento);

    %% Execução do teste
    teste(entradas, PesosAtualizados);

    %% Plotagem dos dados
    plot(entradas(saida==0,1), entradas(saida==0,2),'r.', entradas(saida==1,1), entradas(saida==1,2), 'b.');
toc
    %% Treinamento
    function pesosAtualizados = treinar(entradas, pesos, saida,tamanhoPopulacao, percentualMutacao, percentualCruzamento)
        contaMutacoes = 0;
        ErroTotal = 1;
        iteracao = 1;
        while (ErroTotal ~= 0)
            disp("Geração "+ iteracao)           
           for i = 1:size(saida, 2)  
               ErroTotal = 0; 
               for j = 1: size(pesos, 1)
                  SaidaCal(j,:) = entradas * pesos(j,:)';
               end
               %% Recebimento das saídas calculadas através da função StepFunction  
               SaidaCalculada = StepFunction(SaidaCal');        
            
                %% Cálculo do erro e condição de parada        
                erro = abs(saida(:,i) - SaidaCalculada); 
                [erros, posicao] = min(sum(erro));                
                if (min(sum(erro)) == 0) 
                   disp("Solução encontrada");
                   disp(posicao)
                   disp("Pesos");
                   disp(pesos(posicao,:));
                   break;
                end
               sum(erro)
               %% verificar fitness 
                 for j = 1: size(erro, 2)
                    FFitness(:,j) = Fitness(erro(:,j), size(saida, 1));                            % neste caso, quanto menor o fitness melhor é o indivíduo  
                 end   
                 
                %% Cruzamento
                probcruzamento = rand;
                if (probcruzamento <= percentualCruzamento)  
                    disp("----------------- CRUZAMENTO -----------------");
                    pesos = Cruzamento(pesos, FFitness);
                    disp("----------------------------------------------");  
                end 
                
                %% Mutação    
                probmutacao = rand;
                if (probmutacao <= percentualMutacao)                    
                    disp("----------------- MUTAÇÃO -----------------");
                    individuo = randi([1 tamanhoPopulacao],1);                         % Sorteio do indivíduo para a mutação 
                    disp("Mutação no indivíduo: "+ individuo);
                    pesos = Mutacao(pesos, individuo);
                    contaMutacoes = contaMutacoes + 1;
                    disp("-------------------------------------------");
                end  
                               
                ErroTotal = sum(sum(erro));
                disp("Erros encontrados: "+ErroTotal);
                disp(" ");                
                iteracao = iteracao + 1;
           end
        end    
%     posicao
%     pesos(posicao,:)
    pesosAtualizados = pesos(posicao,:);    
end

    %% step function
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
    
    %% Teste
    function teste(entradas, PesosAtualizados)
         for j = 1: size(PesosAtualizados, 1)          
             SaidaCal(j,:) = entradas * PesosAtualizados(j,:)';
         end
            saida = StepFunction(SaidaCal');   
%             disp(saida);    
    end
    
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
    function Populacao = Cruzamento(pesos, fitness)        
        total = sum(fitness); 
        numeracao = zeros(1, size(pesos,1));
        for i = 1: size(pesos, 1)
            probabilidade(:,i) = (fitness(:,i) * 100)/total;                % probabilidade de cruzamento
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
        
       [~, MaisFraco] = min(fitness);
        
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
        pesos(individuo1,:)
        individuo2
        pesos(individuo2,:)
        disp("Filho: "); 
        MaisFraco
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