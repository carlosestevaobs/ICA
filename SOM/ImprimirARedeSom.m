%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�

function Funcao_ImprimirARedeSom = ImprimirARedeSom( LinhaSom, ColunaSom, PesosNeuronios, ColunaDados, epocas, e, PlotColuna1, PlotColuna2)  
   % Tamanho do vetor de neur�nios
    LocalizacoesNeuronios = zeros(LinhaSom*ColunaSom, ColunaDados);
    % matriz para plotagem da grade
    matriz = zeros(LinhaSom*ColunaSom,1);
    % matriz para plotagem da grade deletada
    matriz_ant = zeros(LinhaSom*ColunaSom,1);
    %% Plotar
    ind = 1;  
    hold on;
    Funcao_ImprimirARedeSom = figure(1);
    % set(figure('Name','Measured Data','NumberTitle','off')); % exemplo para cria��o do figure
    set(Funcao_ImprimirARedeSom,'name',strcat(' �poca: ', num2str(e)),'NumberTitle','off');
    % Recupera os pesos dos neur�nios
    for l = 1:LinhaSom
        for c = 1:ColunaSom      
            LocalizacoesNeuronios(ind,:)=reshape(PesosNeuronios(l,c,:),1,ColunaDados);
            ind = ind + 1;
        end
    end
  
     LocalizacoesNeuronios
    % Imprime a Rede SOM (Self Organizing Map)
    for l = 1:LinhaSom
        Linha1 = 1+LinhaSom*(l-1);
        Linha2 = l*LinhaSom;
        Coluna1 = LinhaSom*ColunaSom;
        matriz(2*l-1,1) = plot(LocalizacoesNeuronios(Linha1:Linha2,PlotColuna1),LocalizacoesNeuronios(Linha1:Linha2,PlotColuna2),'-ko','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','y','MarkerSize',8);
        matriz(2*l,1) = plot(LocalizacoesNeuronios(l:ColunaSom:Coluna1,PlotColuna1),LocalizacoesNeuronios(l:ColunaSom:Coluna1,PlotColuna2),'-ko','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','y','MarkerSize',8);
        matriz_ant(2*l-1,1) = matriz(2*l-1,1);
        matriz_ant(2*l,1) = matriz(2*l,1);
    end
    
    % Deletar a �poca anterior
    if e~=epocas 
        for l = 1:LinhaSom
            delete(matriz_ant(2*l-1,1));
            delete(matriz_ant(2*l,1));
            drawnow;
        end
    end    
end

