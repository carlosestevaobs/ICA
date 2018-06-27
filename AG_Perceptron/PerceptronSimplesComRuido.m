%% SLP (Single Layer Perceptron) para Resolu��o da Sa�da da Porta AND 
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o Bastos Sousa
% Docente: Ajalmar R. Rocha Neto

clear;                                                      % Limpa o Workspace
close all;                                                  % Fecha todas as janelas
clc;                                                        % Limpa o Command Window
tic
%% Par�metros iniciais
entradas =  [0.1*randn(300,2); 
                repmat([1 0], 300,1) + 0.1*randn(300,2); 
                repmat([0 1], 300,1) + 0.1*randn(300,2); 
                repmat([1 1], 300,1) + 0.1*randn(300,2)];
saida = [zeros(900,1);ones(300,1)]';
pesos = [0.1 * randn(1,3)]
TaxaApren = 0.1; 

%% Insere uma �ltima coluna com o valor -1 para multiplicar com o bias
for i = 1: size(entradas,1)
   entradas(:,3) = -1; 
end

%% Execu��o do treinamento
PesosAtualizados = treinar(entradas, pesos, saida, TaxaApren);

% Execu��o do teste
teste(entradas, PesosAtualizados);

% Plotagem dos dados
plot(entradas(saida==0,1), entradas(saida==0,2),'r.', entradas(saida==1,1), entradas(saida==1,2), 'b.');
toc
% Calcula o produto
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
    PercentualAcerto = 0;
    while (PercentualAcerto < 98)        
        ErroTotal = 0;         
        disp("Execu��o "+ iteracao);
        for i = 1:size(saida, 2) 
            SaidaCalculada = CalculaSaida(entradas(i,:), pesos);          
            erro = abs(saida(:,i) - SaidaCalculada)
            ErroTotal = ErroTotal + erro;
            for j = 1:size(pesos, 2)   
                pesos(:,j) = pesos(:,j) + (TaxaApren * entradas(i,j) * erro);                   
            end
            PercentualAcerto = ((size(entradas, 1) - ErroTotal ) * 100)/size(entradas,1)
        end
        iteracao = iteracao + 1;        
    end    
    pesosAtualizados = pesos;  
end


%% Teste
function teste(entradas, PesosAtualizados)
    entradasOriginais = entradas;
    entradasOriginais(:,size(entradas,2)) = [];
    for i = 1 : size(entradas, 1) 
        disp("Sa�da para ");        
        disp(entradas(i,:));
        saida = (CalculaSaida(entradas(i,:), PesosAtualizados));
        disp(saida);
    end
end