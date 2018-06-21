%% SLP com atualiza��o de pesos atrav�s de GA para Resolu��o da Sa�da da Porta AND 

clear;                                                      % Limpa o Workspace
close all;                                                  % Fecha todas as janelas
clc;                                                        % Limpa o Command Window

%% Par�metros iniciais
entradas = [0 0; 0 1; 1 0; 1 1];
pesos = [0.0 0.0]; 
saida = [0 0 0 1];
TaxaApren = 0.1; 


plotpv(entradas', saida);
%% Execu��o do treinamento
PesosAtualizados = treinar(entradas, pesos, saida, TaxaApren);


%% Execu��o do teste
teste(entradas, PesosAtualizados);

%% Calcula o produto
function Saida = CalculaSaida(entradas, pesos) 
    Saida = stepFunction(sum(entradas .* pesos));    
end

%% Fun��o de ativa��o
function step = stepFunction(soma)
    if (soma >= 1)
        step = 1;
    else
        step = 0;
    end
end

%% Treino
function pesosAtualizados = treinar(entradas, pesos, saida, TaxaApren)    
    ErroTotal  = 1;
    iteracao = 1;
    while (ErroTotal ~= 0)
        ErroTotal = 0;         
        disp("Execu��o "+ iteracao);
        for i = 1:size(saida, 2) 
            SaidaCalculada = CalculaSaida(entradas(i,:), pesos);          
            erro = abs(saida(:,i) - SaidaCalculada);
            ErroTotal = ErroTotal + erro
        
            %% atualizar pesos --> inserir GA aqui
            for j = 1:size(pesos, 2)   
                pesos(:,j) = pesos(:,j) + (TaxaApren * entradas(i,j) * erro);                          
            end
            
        end
        iteracao = iteracao + 1;
    end
    pesosAtualizados = pesos; 
end

%% Teste
function teste(entradas, PesosAtualizados)
     for i = 1:size(entradas, 1) 
        disp("Sa�da para ");
        disp(entradas(i,:));
        disp(CalculaSaida(entradas(i,:), PesosAtualizados));
     end
end