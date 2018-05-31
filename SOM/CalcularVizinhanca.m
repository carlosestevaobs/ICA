%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function Funcao_CalcularVizinhanca = CalcularVizinhanca(LinhaSom, ColunaSom, LinhaVencedora, ColunaVencedora, TamVizTop)
    Funcao_CalcularVizinhanca = zeros(LinhaSom, ColunaSom);     % cria uma matriz zerada para o cálculo da vizinhança
    for l = 1:LinhaSom
       for c = 1:ColunaSom
           if (l == LinhaVencedora) && (c == ColunaVencedora)
                Funcao_CalcularVizinhanca(l,c) = 1;             % insere 1 no neurônio vencedor
           else
                % Função da Vizinhança - Equação 3.19
                 Funcao_CalcularVizinhanca(l,c) = exp(-((LinhaVencedora - l)^2 + (ColunaVencedora - c)^2)/(TamVizTop^2));                 
           end    
       end
    end
end
