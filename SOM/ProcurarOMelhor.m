%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function [distanciaEuclidiana, i] = ProcurarOMelhor(Dados, PesosNeuronios, LinhaSom, ColunaSom, LinhaDados, ColunaDados) 
    distanciaEuclidiana = zeros(LinhaSom, ColunaSom);               % gera uma matriz de zeros 
    i = randi([1 LinhaDados]);                                      % WTA - Passo 1 - seleção aleatória de um exemplo de treinamento  
    % Equação para encontrar a menor distância - Equação 3.3
    for l = 1:LinhaSom
        for c = 1:ColunaSom  
            Pesos = reshape(PesosNeuronios(l,c,:),1,ColunaDados);   % Reorganiza os pesos de acordo com a quantidade de colunas dos dados
            V = Dados(i,:) - Pesos;                                 % Equação 3.3
            distanciaEuclidiana(l,c) = sqrt(V*V');                  % Equação 3.3 (continuação)
        end
    end
end

