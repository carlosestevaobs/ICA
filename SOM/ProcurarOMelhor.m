%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function [distanciaEuclidiana, i] = ProcurarOMelhor(Dados, PesosNeuronios, LinhaSom, ColunaSom, LinhaDados, ColunaDados) 
    distanciaEuclidiana = zeros(LinhaSom, ColunaSom);               % gera uma matriz de zeros 
    i = randi([1 LinhaDados]);                                      % WTA - Passo 1 - sele��o aleat�ria de um exemplo de treinamento  
    % Equa��o para encontrar a menor dist�ncia - Equa��o 3.3
    for l = 1:LinhaSom
        for c = 1:ColunaSom  
            Pesos = reshape(PesosNeuronios(l,c,:),1,ColunaDados);   % Reorganiza os pesos de acordo com a quantidade de colunas dos dados
            V = Dados(i,:) - Pesos;                                 % Equa��o 3.3
            distanciaEuclidiana(l,c) = sqrt(V*V');                  % Equa��o 3.3 (continua��o)
        end
    end
end

