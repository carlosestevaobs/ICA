%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function Funcao_ImprimirARedeSom = ImprimirARedeSom( LinhaSom, ColunaSom, PesosNeuronios, ColunaDados, epocas, e)  
    % Tamanho do vetor de neurônios
    TamVetNeu = zeros(LinhaSom*ColunaSom, ColunaDados);
    % matriz para plotagem da grade
    matriz = zeros(LinhaSom*ColunaSom,1);
    % matriz para plotagem da grade deletada
    matriz_ant = zeros(LinhaSom*ColunaSom,1);
    %% Plotar
    ind = 1;  
    hold on;
    Funcao_ImprimirARedeSom = figure(1);
    % set(figure('Name','Measured Data','NumberTitle','off')); % exemplo para criação do figure
    set(Funcao_ImprimirARedeSom,'name',strcat(' Época: ', num2str(e)),'NumberTitle','off');
%     Localizacoes = zeros(LinhaSom, ColunaSom);
    % Recupera os pesos dos neurônios
    for l = 1:LinhaSom
        for c = 1:ColunaSom      
            TamVetNeu(ind,:)=reshape(PesosNeuronios(l,c,:),1,ColunaDados);
%             Localizacoes = TamVetNeu(ind,:);
            ind = ind + 1;
        end
    end
%     Localizacoes
    % Imprime a Rede SOM (Self Organizing Map)
    for l = 1:LinhaSom
        Linha1 = 1+LinhaSom*(l-1);
        Linha2 = l*LinhaSom;
        Coluna1 = LinhaSom*ColunaSom;
        matriz(2*l-1,1) = plot(TamVetNeu(Linha1:Linha2,1),TamVetNeu(Linha1:Linha2,2),'-ko','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','y','MarkerSize',8);
        matriz(2*l,1) = plot(TamVetNeu(l:ColunaSom:Coluna1,1),TamVetNeu(l:ColunaSom:Coluna1,2),'-ko','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','y','MarkerSize',8);
        matriz_ant(2*l-1,1) = matriz(2*l-1,1);
        matriz_ant(2*l,1) = matriz(2*l,1);
    end
    
    % Deletar a época anterior
    if e~=epocas 
        for l = 1:LinhaSom
            delete(matriz_ant(2*l-1,1));
            delete(matriz_ant(2*l,1));
            drawnow;
        end
    end    
end

