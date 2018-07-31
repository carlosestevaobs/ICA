%% Elaboração da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function ImprimirGrafico(Dados, Classe )
    figure; 
    hold on;
       
    %% Clusters
    cluster_1 = find(Classe == 1);
    cluster_2 = find(Classe == 2);
    cluster_3 = find(Classe == 3);
    cluster_4 = find(Classe == 4);
    cluster_5 = find(Classe == 5);
    cluster_6 = find(Classe == 6);
    cluster_7 = find(Classe == 7);
    cluster_8 = find(Classe == 8);
    cluster_9 = find(Classe == 9);
    cluster_10 = find(Classe == 10);
    
    %% Plotagem dos dados
    plot(Dados(cluster_1,1),Dados(cluster_1,2),'rs','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','r','MarkerSize',8);
    plot(Dados(cluster_2,1),Dados(cluster_2,2),'gs','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','g','MarkerSize',8);
    plot(Dados(cluster_3,1),Dados(cluster_3,2),'ms','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','m','MarkerSize',8);
    plot(Dados(cluster_4,1),Dados(cluster_4,2),'cs','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','c','MarkerSize',8);
    plot(Dados(cluster_5,1),Dados(cluster_5,2),'ks','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',8);
    plot(Dados(cluster_6,1),Dados(cluster_6,2),'r^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','r','MarkerSize',8);
    plot(Dados(cluster_7,1),Dados(cluster_7,2),'g^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','g','MarkerSize',8);
    plot(Dados(cluster_8,1),Dados(cluster_8,2),'m^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','m','MarkerSize',8);
    plot(Dados(cluster_9,1),Dados(cluster_9,2),'c^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','c','MarkerSize',8);
    plot(Dados(cluster_10,1),Dados(cluster_10,2),'k^','LineWidth',1,'MarkerEdgeColor','b','MarkerFaceColor','k','MarkerSize',8);
        
    set(gcf,'un','n','pos',[0,0,1,1]);
    figure(gcf)
    hold off;
end

