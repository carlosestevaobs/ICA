%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function AtualizarVetorPesos = AtualizarPesos(  Dados, PesosDoVetor, LinhaSom, ColunaSom, ColunaDados, i, TaxaDeAprendizado, Vizinhanca)
    AtualizarVetorPesos = zeros(LinhaSom, ColunaSom, ColunaDados);
    for l = 1: LinhaSom
       for c = 1:ColunaSom           
           % passa por todos os neur�nios atualizando seus pesos
           % Redimensiona os pesos do vetor 
           PesoAtual = reshape(PesosDoVetor(l,c,:),1,ColunaDados);
           % Atualiza��o dos pesos - Rede SOM - Equa��o 3.17
           AtualizarVetorPesos(l,c,:) = PesoAtual + TaxaDeAprendizado * Vizinhanca(l,c)*(Dados(i,:)-PesoAtual);            
       end
    end             
end