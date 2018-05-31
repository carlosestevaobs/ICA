%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function [ErroDeQuantizacao, i] = ErroDeQuantizacao(Dados, PesosNeuronios, LinhaVencedora, ColunaVencedora, ColunaDados)
    %% C�lculo do Erro de Quantiza��o M�dio - MSE     

    
    PesoDoVencedor = reshape(PesosDoVetor(LinhaVencedora,ColunaVencedora,:),1,ColunaDados);
    
    
    
    
%     i = randi([1 LinhaDados]);    
%     % Equa��o para encontrar a menor dist�ncia - Equa��o 3.3
%     for l = 1:LinhaSom
%             ErroDeQuantizacao(l) = abs(sum((Dados(i,:)' - (PesosNeuronios(ColunaVencedora))))); %Equa��o 3.28 - Erro de quantiza��o 
%     end    
end
