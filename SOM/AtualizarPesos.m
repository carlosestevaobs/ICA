%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function AtualizarVetorPesos = AtualizarPesos(  Dados, PesosDoVetor, LinhaSom, ColunaSom, ColunaDados, i, TaxaDeAprendizado, Vizinhanca)
    AtualizarVetorPesos = zeros(LinhaSom, ColunaSom, ColunaDados);
    for l = 1: LinhaSom
       for c = 1:ColunaSom           
           % passa por todos os neurônios atualizando seus pesos
           % Redimensiona os pesos do vetor 
           PesoAtual = reshape(PesosDoVetor(l,c,:),1,ColunaDados);
           % Atualização dos pesos - Rede SOM - Equação 3.17
           AtualizarVetorPesos(l,c,:) = PesoAtual + TaxaDeAprendizado * Vizinhanca(l,c)*(Dados(i,:)-PesoAtual);            
       end
    end             
end