%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function Funcao_CalcularVizinhanca = CalcularVizinhanca(LinhaSom, ColunaSom, LinhaVencedora, ColunaVencedora, TamVizTop)
    Funcao_CalcularVizinhanca = zeros(LinhaSom, ColunaSom);     % cria uma matriz zerada para o c�lculo da vizinhan�a
    for l = 1:LinhaSom
       for c = 1:ColunaSom
           if (l == LinhaVencedora) && (c == ColunaVencedora)
                Funcao_CalcularVizinhanca(l,c) = 1;             % insere 1 no neur�nio vencedor
           else
                % Fun��o da Vizinhan�a - Equa��o 3.19
                 Funcao_CalcularVizinhanca(l,c) = exp(-((LinhaVencedora - l)^2 + (ColunaVencedora - c)^2)/(TamVizTop^2));                 
           end    
       end
    end
end
