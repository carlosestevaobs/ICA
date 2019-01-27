%% Elabora��o da RNA (Rede Neural Artificial) SOM (Self Organizing Map)
% Disciplina: Intelig�ncia Computacional Aplicada
% Discente: Carlos Estev�o
% Docente e Orientador: Cl�udio S�


function varargout = projeto(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @projeto_OpeningFcn, ...
    'gui_OutputFcn',  @projeto_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function projeto_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = projeto_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function pb_ExecutarTudo_Callback(hObject, eventdata, handles)


function pb_PassoAPasso_Callback(hObject, eventdata, handles)
LS = str2num(get(handles.gui_linhas,'String'));
CS = str2num(get(handles.gui_colunas,'String'));
TV = str2num(get(handles.gui_vizinhanca,'String'));
TA = str2double(get(handles.gui_taxaAprend,'String'));
EP = str2num(get(handles.gui_epocas,'String'));
KVizinhos = str2num(get(handles.gui_knn,'String'));
condicaoPImpressao = get(handles.MostrarN,'Value');
CarregamentoBase = get(handles.endereco,'string');
Base = readtable(CarregamentoBase);                             % Carrega a base de dados numa tabela
colunaB = size(Base,2);
Dados = Base{:,1:colunaB-1};                                    % Transforma numa matriz
colunas = size(Dados, 2);

itens1 = handles.gui_coluna1.String;
selectedIndex1 = handles.gui_coluna1.Value;
PlotColuna1 = str2num(itens1{selectedIndex1});

itens2 = handles.gui_coluna2.String;
selectedIndex2 = handles.gui_coluna2.Value;
PlotColuna2 = str2num(itens2{selectedIndex2});

%% Carrega a base de dados numa tabela
ClassesCategoricas = categorical(Base{:,colunaB:colunaB});      % Pegando a �ltima coluna (as classes categ�ricas)

%% Padroniza��o da base
Classes = grp2idx(ClassesCategoricas);                  % Convers�o para num�rica cont�nua
for i = 1:colunas
    Dados(:, i) = ((Dados(:, i) - mean(Dados(:, i)))/std(Dados(:, i)));
end

%% Arquitetura da Rede Som
%% mapa Som
LinhaSom = LS;                                          % N�mero de linhas da matriz SOM
ColunaSom = CS;                                         % N�mero de colunas da matriz SOM
%% fim da organiza��o do mapa
epocas = EP;                                            % N�mero de �pocas para convergir
TamInicial = TV;                                        % Tamanho inicial da vizinhan�a (se comportou bem com um n�mero pequeno)
TaxaDeAprendizadoInicial = TA;
[LinhaDados, ColunaDados] = size(Dados);               	% Obtem o n�mero de linhas e colunas da base de dados (sem as classes)
Iteracoes = LinhaDados;                                 % N�mero de itera��es por �poca
temp_TamInicial = Iteracoes/log(TamInicial);            % Constante de tempo da vizinhan�a - Haykin p�g. 493

%% Iniciar os pesos dos neur�nios de forma aleat�ria no intervalo dos dados
PesosNeuronios = zeros(LinhaSom,ColunaSom,ColunaDados); % Cria uma matriz vazia para receber os neur�nios de forma aleat�ria
for l = 1:LinhaSom
    for c = 1:ColunaSom
        PesosNeuronios(l,c,:) = min(Dados) + (max(Dados) + max(Dados)).*rand(1,ColunaDados);        % Em geral os valores dos pesos s�o atribu�dos no intervalo [0,1]
    end
end

%% Prepara��o para impress�o em 2D
DadosPlot =  horzcat(Dados(:,PlotColuna1));
DadosPlot = horzcat(DadosPlot, Dados(:,PlotColuna2));

ImprimirGrafico(DadosPlot, Classes);                            % Se comentar ser� mostrado apenas os neur�nios
hold on;

%% fazer �pocas
for e = 1: epocas
    %% Treinamento da Rede Som
    for t = 1:Iteracoes
        tMax = LinhaDados * epocas;                                      % Equa��o 3.14 - C�lculo do tMax
        TamVizTop = (TamInicial*exp(-t/temp_TamInicial)) ;               % Redu��o do tamanho da vizinhan�a topol�gica do neur�nio vencedor
        TaxaDeAprendizado = TaxaDeAprendizadoInicial*(1 - (t/tMax));     % Equa��o 3.11 - decrescimento da taxa de aprendizado
        if (TaxaDeAprendizado < 0.01)                                    % Haikin recomenda uma taxa de aprendizado de 0.1 a 0.01
            TaxaDeAprendizado = 0.01;
        end
        
        %% Competi��o
        [DistanciaEuclidiana, indiceM] = ProcurarOMelhor(Dados, PesosNeuronios, LinhaSom, ColunaSom, LinhaDados, ColunaDados);
        [TamanhoDistMin,ind] = min(DistanciaEuclidiana(:));                                 % Equa��o 3.5 - Pegar a menor dist�ncia - WTA Passo 2
        [LinhaVencedora, ColunaVencedora] = ind2sub(size(DistanciaEuclidiana),ind);         % Retorna �ndice (linha e coluna) do neur�nio vencedor
        
        %% Avaliar pesos dos neur�nios
        
        %% Fun��o de vizinhan�a
        Vizinhanca = CalcularVizinhanca(LinhaSom, ColunaSom, LinhaVencedora, ColunaVencedora, TamVizTop);
        
        %% Adapta��o - Atualiza��o dos pesos dos neur�nios - WTA Passo 3
        PesosNeuronios = AtualizarPesos(Dados, PesosNeuronios, LinhaSom, ColunaSom, ColunaDados, indiceM, TaxaDeAprendizado, Vizinhanca);
        
        %% C�lculo de erro - fazer fora da �poca
        PesoDoVencedor = reshape(PesosNeuronios(LinhaVencedora,ColunaVencedora,:),1,ColunaDados);
        erro = (Dados - PesoDoVencedor);
    end                                                              % Fim da itera��o
    %% Randomizar valores a cada �poca e Padronizar os mesmos
    Dados = Dados(randperm(size(Dados,1)),:);
    for i = 1:colunas
        Dados(:, i) = ((Dados(:, i) - mean(Dados(:, i)))/std(Dados(:, i)));
    end
    %% Plotagem dos neur�nios
    if (condicaoPImpressao == 1)
        ImprimirARedeSom( LinhaSom, ColunaSom, PesosNeuronios, ColunaDados, epocas, e, PlotColuna1, PlotColuna2);
    end
    
end
%% Popular tabela 
t = handles.tabela;
set(t,'Data', Dados);
if (condicaoPImpressao == 0)
    ImprimirARedeSom( LinhaSom, ColunaSom, PesosNeuronios, ColunaDados, epocas, e, PlotColuna1, PlotColuna2);
end

%% In�cio do KNN
[L_Neur, C_Neur, C_Dados] = size(PesosNeuronios);
PesosOrganizados = [];
A = [];
for i = 1 : C_Dados
    PesosNovos = reshape(PesosNeuronios(:,:,i),[],1);
    A = horzcat(A, PesosNovos);
end
PesosOrganizados = [PesosOrganizados A];
[linhasD, ~] = size(Dados);
[linhasN, ~] = size(PesosOrganizados);

%% Calcula da dist�ncia
for i = 1: linhasN
    Distancia = [];
    for j = 1: linhasD
        Distancia(j, i) = sqrt(sum((Dados(j,:) - PesosOrganizados(i,:)) .^ 2));
    end
    [distancias, id] = sort(Distancia(:,i));
    
    %% Classes ordenadas
    for l = 1: KVizinhos
        ClassesProximas(i, l,:) = Classes(id(l,:),:);
    end
end



%% Criando a matriz de contagem de classes
for k = 1: linhasN
    for m = 1: size(unique(Classes), 1)
        matrizKNN(k, m) = sum(ClassesProximas(k,:) == m);
    end
end
matrizKNN(1,:)
ClasseRepresentada = [];
Sem = 0;
Com = 0;
for k = 1: linhasN    
    [quant, classeR] = max(matrizKNN(k,:));
    cont = 0;
    for j = 1: size(unique(Classes), 1)
        if (matrizKNN(k, j) == quant)
           cont = cont + 1;
        end    
    end
    
     if (cont > 1)
         ClasseRepresentada(k,:) = 0;
         Sem = Sem + 1;
     else
         ClasseRepresentada(k,:) = classeR;
         Com = Com + 1;
     end
end
set(handles.NSemCluster,'string',Sem);
set(handles.NComCluster,'string',Com);


%% plotar KNN
t = handles.TabelaClasses;
set(t,'Data',matrizKNN);
% Neur�nios e classes

t = handles.KNNClasses;
set(t,'Data',ClasseRepresentada);


%% Popular pesos novos (todos os pesos)
t = handles.TabelaNeuronios;
set(t,'Data', PesosOrganizados);

function gui_taxaAprend_Callback(hObject, eventdata, handles)
function gui_taxaAprend_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gui_iteracoes_Callback(hObject, eventdata, handles)
function gui_iteracoes_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gui_linhas_Callback(hObject, eventdata, handles)
function gui_linhas_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gui_colunas_Callback(hObject, eventdata, handles)
function gui_colunas_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gui_vizinhanca_Callback(hObject, eventdata, handles)
function gui_vizinhanca_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function gui_epocas_Callback(hObject, eventdata, handles)
function gui_epocas_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in gui_coluna1.
function gui_coluna1_Callback(hObject, eventdata, handles)
% hObject    handle to gui_coluna1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gui_coluna1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gui_coluna1


% --- Executes during object creation, after setting all properties.
function gui_coluna1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gui_coluna1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in gui_coluna2.
function gui_coluna2_Callback(hObject, eventdata, handles)
% hObject    handle to gui_coluna2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns gui_coluna2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from gui_coluna2


% --- Executes during object creation, after setting all properties.
function gui_coluna2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gui_coluna2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_carregarBase.
function bt_carregarBase_Callback(hObject, eventdata, handles)
% hObject    handle to bt_carregarBase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[file,path,indx] = uigetfile;
if isequal(file,0)
    disp('Cancelado');
else
    disp(['Selecionado ', fullfile(path, file)]);
end
ender = strcat(path,file);
set(handles.endereco,'string',ender);
CarregamentoBase = get(handles.endereco,'string');
Base = readtable(CarregamentoBase);
coluna = size(Base, 2);
x = 1: 1:coluna-1;
set(handles.gui_coluna1,'String',{x});
set(handles.gui_coluna2,'String',{x});


% --- Executes on button press in MostrarN.
function MostrarN_Callback(hObject, eventdata, handles)
% hObject    handle to MostrarN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of MostrarN



function kVizinhos_Callback(hObject, eventdata, handles)
% hObject    handle to kVizinhos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kVizinhos as text
%        str2double(get(hObject,'String')) returns contents of kVizinhos as a double


% --- Executes during object creation, after setting all properties.
function kVizinhos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kVizinhos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gui_knn_Callback(hObject, eventdata, handles)
% hObject    handle to gui_knn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gui_knn as text
%        str2double(get(hObject,'String')) returns contents of gui_knn as a double


% --- Executes during object creation, after setting all properties.
function gui_knn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gui_knn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Gui_Visualizar.
function Gui_Visualizar_Callback(hObject, eventdata, handles)
% hObject    handle to Gui_Visualizar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





