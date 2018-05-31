%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function [ErroDeQuantizacao, i] = ErroDeQuantizacao(Dados, PesosNeuronios, LinhaVencedora, ColunaVencedora, ColunaDados)
    %% Cálculo do Erro de Quantização Médio - MSE     

    
    PesoDoVencedor = reshape(PesosDoVetor(LinhaVencedora,ColunaVencedora,:),1,ColunaDados);
    
    
    
    
%     i = randi([1 LinhaDados]);    
%     % Equação para encontrar a menor distância - Equação 3.3
%     for l = 1:LinhaSom
%             ErroDeQuantizacao(l) = abs(sum((Dados(i,:)' - (PesosNeuronios(ColunaVencedora))))); %Equação 3.28 - Erro de quantização 
%     end    
end
