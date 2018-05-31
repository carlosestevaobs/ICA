%% Elaboração da RNA (Rede Neural Artificial) MLP (MultiLayer Perceptron) - Trabalho 2
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão Bastos Sousa
% Docente e Orientador: Cláudio Sá

function varargout = projetoMLP(varargin)
% PROJETOMLP MATLAB code for projetoMLP.fig
%      PROJETOMLP, by itself, creates a new PROJETOMLP or raises the existing
%      singleton*.
%
%      H = PROJETOMLP returns the handle to a new PROJETOMLP or the handle to
%      the existing singleton*.
%
%      PROJETOMLP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJETOMLP.M with the given input arguments.
%
%      PROJETOMLP('Property','Value',...) creates a new PROJETOMLP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projetoMLP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projetoMLP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projetoMLP

% Last Modified by GUIDE v2.5 23-May-2018 16:51:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projetoMLP_OpeningFcn, ...
                   'gui_OutputFcn',  @projetoMLP_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before projetoMLP is made visible.
function projetoMLP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to projetoMLP (see VARARGIN)

% Choose default command line output for projetoMLP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projetoMLP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projetoMLP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_epocas_Callback(hObject, eventdata, handles)
% hObject    handle to et_epocas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_epocas as text
%        str2double(get(hObject,'String')) returns contents of et_epocas as a double


% --- Executes during object creation, after setting all properties.
function et_epocas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_epocas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_AprenOcu_Callback(hObject, eventdata, handles)
% hObject    handle to et_AprenOcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_AprenOcu as text
%        str2double(get(hObject,'String')) returns contents of et_AprenOcu as a double


% --- Executes during object creation, after setting all properties.
function et_AprenOcu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_AprenOcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_AprenSai_Callback(hObject, eventdata, handles)
% hObject    handle to et_AprenSai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_AprenSai as text
%        str2double(get(hObject,'String')) returns contents of et_AprenSai as a double


% --- Executes during object creation, after setting all properties.
function et_AprenSai_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_AprenSai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_Executar.
function bt_Executar_Callback(hObject, eventdata, handles)
%% Pegar valores 
    NumFuncao = get(handles.popupmenu1,'Value');

%% Carregamento inicial
    CarregarmentoBase = get(handles.enderecoBase,'string');
    Base = readtable(CarregarmentoBase);                    % Carrega a base de dados numa tabela
    colunaB = size(Base,2);
    Dados = Base{:,1:colunaB-1};                            % Transforma numa matriz
    colunas = colunaB - 1;                                  % Pega os tamanhos em linhas e colunas
    intervaloMin = 0;
%% Verifica função para normalização dos dados
    if NumFuncao == 1
        intervaloMin = 0.1;                       
    else
        intervaloMin = -0.9;
    end      
%% Normalização dos dados
%     for i = 1:colunas
%         Dados(:, i) = ((Dados(:, i) - min(Dados(:, i))*(0.9 - intervaloMin))/(max(Dados(:, i))-min(Dados(i)))) + intervaloMin;
%     end                

%% Padronização
    for i = 1:colunas
        Dados(:, i) = ((Dados(:, i) - mean(Dados(:, i)))/std(Dados(:, i)));
    end
    
    ClassesCategoricas = categorical(Base{:,colunaB:colunaB});                % Carrega as classes
    Saidas = grp2idx(ClassesCategoricas);                                     % Conversão para numérica contínua        
%% Percentual de Treinamento
    Dados = horzcat(Dados,Saidas);
    DadosTreina = [];
    DadosTreinamento = [];
    tamanhoBase = size(Saidas, 1);
    qtdeclasses = size(unique(Saidas), 1);
    PercentualTreinamento = (str2double(get(handles.percentualOculta,'string')))/100;
    qx = (PercentualTreinamento * tamanhoBase)/qtdeclasses;
    qy = tamanhoBase/qtdeclasses;
    diferenca = qy - qx;
    k = 0;
    x = 0;
    aux = 1;
     for i=1:qx    
          for j = 0: qtdeclasses - 1             
                k = (j * qx); 
                x = round(k + (diferenca * (j + 1)));
                PosicoesPegas(aux,:) = i+x;
                DadosTreina  = horzcat(DadosTreina, Dados((i + x),:)');
                aux = aux + 1;
          end
         DadosTreinamento = [DadosTreinamento DadosTreina]; 
         DadosTreina = [];
     end
     DadosTreinamentoO = DadosTreinamento;
    Saidas = DadosTreinamento(colunaB,:)';
    DadosTreinamento(colunaB,:) = [];    
    
%% Tratamento da Base
    classesNumericas = unique(Saidas');                     % Pega as classes sem repetições    
    colunasC = size(classesNumericas, 2);                   % Recebe a quantidade de linhas e colunas da matriz
    SaidasReais = Saidas;    
    for i = 1 : colunasC
        rows = Saidas == i;
        SaidasReais( rows, i ) = 0.9;
        rows = Saidas ~= i;
        SaidasReais( rows, i ) = intervaloMin;
    end

%% Carregamento das demais variáveis
    NEntradas = colunas;                                                    % Quantidade de Entradas
    NSaidas = colunasC;                                                     % Saídas necessárias
    NOculta = str2double(get(handles.QtdNeuOculta,'String'));
    %     NOculta = round((NEntradas + NSaidas)/2);                               % Neurônios da camada oculta
    PesoEntradaOculta = -0.5 + (0.5 + 0.5).*rand(NEntradas,NOculta);        % Pesos aleatórios da camada de entrada para a camada oculta
    PesoOcultaSaida = -0.5 + (0.5 + 0.5).*rand(NOculta,NSaidas);            % Pesos aleatórios da camada oculta para a camada de saída
    TaxaAprendO = str2double(get(handles.et_AprenOcu,'String'));            % Taxa de aprendizado da camada oculta - recomendado 0.3
    TaxaAprendS = str2double(get(handles.et_AprenSai,'String'));            % Taxa de aprendizado da camada de saída - recomendado 0.5
    TaxaAprendizadoO = TaxaAprendO;                                         % Taxa de aprendizado da camada oculta - recomendado 0.5
    TaxaAprendizadoS = TaxaAprendS;                                         % Taxa de aprendizado da camada de saída - recomendado 0.3
    PesoBiasOculta = -0.5 + (0.5 + 0.5).*rand(NOculta,1);                % Bias da camada de entrada para camada oculta
    DecTaxCamOculta = get(handles.DecTaxCamOcu, 'Value'); 
    DecTaxCamSaida = get(handles.DecTaxCamSai, 'Value');
    epoca = str2num(get(handles.et_epocas,'String'));                       % número de rodadas

%% Organização do treinamento
    CamadaSaida = SaidasReais';                                             % insere os dados na camada Saída
    linhasS = size(SaidasReais, 1);
    ErroTotal = zeros(NSaidas,epoca);                                       % cria uma matriz de zeros para inserir os erros
    erro = 0;
    SaidaCalculada = [];
%% Treinamento
    for i = 1:epoca    
        for j = 1:size(DadosTreinamento,2)        
        %% sentido direto
            ProdEntOcu = (DadosTreinamento(:,j)' * PesoEntradaOculta);                % Equação 7.2 - Pesos para cada registro           
             
            if NumFuncao == 1
                FuncaoAtivacao = FuncaoLogistica(ProdEntOcu+PesoBiasOculta');                       % Equação 7.4 - Função logística
            else
                FuncaoAtivacao = FuncaoTangenteHiperbolica(ProdEntOcu+PesoBiasOculta');             % Equação 7.5 - Função tangente hiperbólica 
            end
            if NumFuncao == 1
                Saida = FuncaoLogistica(FuncaoAtivacao*PesoOcultaSaida);                   % Equação 7.4 - Função logística
           else
                Saida = FuncaoTangenteHiperbolica(FuncaoAtivacao*PesoOcultaSaida);         % Equação 7.5 - Função tangente hiperbólica
            end
        
           erro = CamadaSaida(:,j)' - Saida;                                       % Equação 7.7 - Cálculo do erro
           
           if NumFuncao == 1
                DerivadaSaida = FuncaoDerivadaLogistica(Saida);                     % Equação 7.13 - Cálculo da Derivada Saída
           else
                DerivadaSaida = FuncaoDerivadaTangenteH(Saida);                     % Equação 7.14 - Cálculo da Derivada Saída
           end
           GradienteSaida = DerivadaSaida .* erro;                                  % Cálculo da derivada de Saída * o erro

            %% Atualização dos pesos da camada oculta        
            PesoOcultaSaida = PesoOcultaSaida + TaxaAprendizadoS * FuncaoAtivacao' * GradienteSaida; % Equação 7.18 - Atualização dos pesos
           
            if NumFuncao == 1
                DerivadaOculta = FuncaoDerivadaLogistica(FuncaoAtivacao);              % Equação 7.13 - Derivada da camada oculta
           else
                DerivadaOculta = FuncaoDerivadaTangenteH(FuncaoAtivacao);              % Equação 7.14 - Cálculo da Derivada Saída
           end
           GradienteOculta = (DerivadaOculta'.* (PesoOcultaSaida * GradienteSaida'));
           
           %% Atualização dos pesos da camada de entrada        
            PesoEntradaOculta = PesoEntradaOculta + TaxaAprendizadoO * (DadosTreinamento(:,j) * GradienteOculta'); 
            PesoBiasOculta = PesoBiasOculta + 2 * GradienteOculta;
           
            SaidaCalculada(:,j) = Saida;                                        % armazena todas as saídas calculadas   
            if DecTaxCamOculta == 1
                TaxaAprendizadoO = TaxaAprendO/(1 + epoca);                         % Equação 7.36 - Decaimento exponencial da taxa de Aprendizagem
            end
            if DecTaxCamSaida == 1
                TaxaAprendizadoS = TaxaAprendS/(1 + epoca);
            end
            
            DistEuclidianaTrein(:,j) = sqrt((CamadaSaida(:,j) - SaidaCalculada(:,j)).^2);
            [menor ClasseTreinCalc] = min(0.9 - SaidaCalculada(:,j));  
            ClassesTreinCalculadas(j) = ClasseTreinCalc;
        end
        % fim da iteração
        ErroTotal(:,i) = erro;
        
        %% Randomização da base
%             DadosTreinamento = DadosTreinamentoO(:,randperm(size(DadosTreinamentoO,2)));
%             Saidas = DadosTreinamento(colunaB,:)';
%             DadosTreinamento(colunaB,:) = [];
%             CamadaSaida = [];
%         %% Tratamento da Base
%             classesNumericas = unique(Saidas');                    % Pega as classes sem repetições    
%             colunasC = size(classesNumericas, 2);                   % Recebe a quantidade de linhas e colunas da matriz
%             SaidasReais = Saidas;    
%              for k = 1 : colunasC
%                  rows = Saidas == k;
%                  SaidasReais( rows, k ) = 0.9;
%                  rows = Saidas ~= k;
%                  SaidasReais( rows, k ) = intervaloMin;
%              end
%              CamadaSaida = SaidasReais';                                      % insere os dados na camada Saída
            %% fim da randomização
        
    end
    ErroQuadratico = sum((ErroTotal(:,1:i).^2),1);                              % Equação 7.9 - Soma dos erros quadráticos

%% Popular do treinamento: matriz de confusão, erro quadrático e dados
     t = handles.ErroQuadraticoTrein;
     set(t,'Data',ErroQuadratico');      
     
     t = handles.SaidaDesejadaTrein;
     set(t,'Data',CamadaSaida);
     
    t = handles.ClasseMaisProxTrein; 
    set(t,'Data',ClassesTreinCalculadas'); 

     t = handles.ValoresCalculadosTrein; 
     set(t,'Data',SaidaCalculada); 

     MatrizConfusaoTreinamento = confusionmat(Saidas, ClassesTreinCalculadas');
     t = handles.MatrizConfusaoTrein; 
     set(t,'Data',MatrizConfusaoTreinamento);
     

%% Plotagem do gráfico de erro
    axes(handles.ErroQuadraticoGrafTrein);
    plot(ErroQuadratico);
    set(gca,'FontSize',6);
    xlabel('Iterações: ');
    ylabel('Erro quadrático: ');
    
    axes(handles.ClassesGrafTrein);
    bar3(MatrizConfusaoTreinamento);
    
%% Testes
  
 %% Divisão da base para testes
    DadosTest = [];
    DadosTeste = [];
    contaEntradasTeste = 0;
     for i=1:tamanhoBase    
          if PosicoesPegas ~= i                 
            DadosTest  = horzcat(DadosTreina, Dados((i),:)');                
            DadosTeste = [DadosTeste DadosTest]; 
            DadosTest = [];
          end
     end
     DadosTeste = DadosTeste(:,randperm(size(DadosTeste,2)));     
     ClassesT = DadosTeste(colunaB,:)';
     DadosTeste(colunaB,:) = [];        
    
%% Tratamento da Base    
    linhasTotaisCT = size(ClassesT, 1);                         % conta o total de linhas    
    classesNumericasT = unique(ClassesT');                      % Pega as classes sem repetições    
    colunasCT = size(classesNumericasT, 2);                     % Recebe a quantidade de linhas e colunas da matriz
    SaidasT = ClassesT;
    for i = 1 : colunasCT
        rowsT = ClassesT == i;
        SaidasT( rowsT, i ) = 0.9;
        rowsT = ClassesT ~= i;
        SaidasT( rowsT, i ) = intervaloMin;
    end
 
%% Teste
LT = size(DadosTeste, 2);
CamadaSaidaT = SaidasT';
DistEuclidiana = zeros(colunasCT,LT);
erroT = [];    
for i=1:size(DadosTeste,2)
     ProdEntOcu=DadosTeste(:,i)'*PesoEntradaOculta;
    
      if NumFuncao == 1
                FuncaoAtivacao = FuncaoLogistica(ProdEntOcu+PesoBiasOculta');                       % Equação 7.4 - Função logística
      else
                FuncaoAtivacao = FuncaoTangenteHiperbolica(ProdEntOcu+PesoBiasOculta');             % Equação 7.5 - Função tangente hiperbólica 
      end
      
      if NumFuncao == 1
                SaidaTeste(:,i) = FuncaoLogistica(FuncaoAtivacao*PesoOcultaSaida)';                       % Equação 7.4 - Função logística
      else
                SaidaTeste(:,i) = FuncaoTangenteHiperbolica(FuncaoAtivacao*PesoOcultaSaida)';             % Equação 7.5 - Função tangente hiperbólica 
     end
     %% Cálculo da distância   
     DistEuclidianaT(:,i) = sqrt((CamadaSaidaT(:,i) - SaidaTeste(:,i)).^2);            
     [menor, ClasseTCalc] = min(0.9 - SaidaTeste(:,i));
     ClassesTCalculadas(i) = ClasseTCalc;
    
end
erro = CamadaSaidaT - SaidaTeste;
erroTotalTeste = sum((erro(:,1:i).^2),1);

%% Popular do teste: matriz de confusão, erro quadrático e dados
     t = handles.ErroQuadraticoTeste;
     set(t,'Data',erroTotalTeste');      

    t = handles.ValoresCalculadosTeste; 
    set(t,'Data',SaidaTeste); 

    t = handles.SaidaDesejadaTeste; 
    set(t,'Data',CamadaSaidaT); 

    t = handles.ClasseMaisProxTeste; 
    set(t,'Data',ClassesTCalculadas'); 
    
    MatrizConfusaoTeste = confusionmat(ClassesT, ClassesTCalculadas);
    t = handles.MatrizConfusaoTeste; 
    set(t,'Data',MatrizConfusaoTeste); 

%% Plotagem do gráfico das classes
    axes(handles.ErroQuadraticoGrafTeste);
    plot(erroTotalTeste);
    set(gca,'FontSize',6);
    xlabel('Iterações: ');
    ylabel('Erro quadrático: ');


    axes(handles.ClassesGrafTeste);
    bar3(MatrizConfusaoTeste);
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[file,path,indx] = uigetfile;
if isequal(file,0)
   disp('Cancelado pelo usuário')
else
   disp(['Selecionado: ', fullfile(path, file)])
end
a = strcat(path,file);
set(handles.enderecoBase,'string',a);


% --- Executes on button press in DecTaxCamOcu.
function DecTaxCamOcu_Callback(hObject, eventdata, handles)
% hObject    handle to DecTaxCamOcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DecTaxCamOcu


% --- Executes on button press in DecTaxCamSai.
function DecTaxCamSai_Callback(hObject, eventdata, handles)
% hObject    handle to DecTaxCamSai (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of DecTaxCamSai



function QtdNeuOculta_Callback(hObject, eventdata, handles)
% hObject    handle to QtdNeuOculta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of QtdNeuOculta as text
%        str2double(get(hObject,'String')) returns contents of QtdNeuOculta as a double


% --- Executes during object creation, after setting all properties.
function QtdNeuOculta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to QtdNeuOculta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function percentualOculta_Callback(hObject, eventdata, handles)
% hObject    handle to percentualOculta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of percentualOculta as text
%        str2double(get(hObject,'String')) returns contents of percentualOculta as a double


% --- Executes during object creation, after setting all properties.
function percentualOculta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to percentualOculta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
