%% Avaliador Fuzzy para Análise de Viabilidade de Inserção em Estágios da EEEP José Vidal Alves
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão
% Docente e Orientador: Cláudio Sá

function varargout = principal(varargin)
% PRINCIPAL MATLAB code for principal.fig
%      PRINCIPAL, by itself, creates a new PRINCIPAL or raises the existing
%      singleton*.
%
%      H = PRINCIPAL returns the handle to a new PRINCIPAL or the handle to
%      the existing singleton*.
%
%      PRINCIPAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINCIPAL.M with the given input arguments.
%
%      PRINCIPAL('Property','Value',...) creates a new PRINCIPAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before principal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to principal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help principal

% Last Modified by GUIDE v2.5 08-Jun-2018 18:11:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @principal_OpeningFcn, ...
                   'gui_OutputFcn',  @principal_OutputFcn, ...
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


% --- Executes just before principal is made visible.
function principal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to principal (see VARARGIN)

% Choose default command line output for principal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes principal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = principal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider



function MAvaliTeorica_Callback(hObject, eventdata, handles)
% hObject    handle to MAvaliTeorica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAvaliTeorica as text
%        str2double(get(hObject,'String')) returns contents of MAvaliTeorica as a double


% --- Executes during object creation, after setting all properties.
function MAvaliTeorica_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAvaliTeorica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MAvaliPratica_Callback(hObject, eventdata, handles)
% hObject    handle to MAvaliPratica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MAvaliPratica as text
%        str2double(get(hObject,'String')) returns contents of MAvaliPratica as a double


% --- Executes during object creation, after setting all properties.
function MAvaliPratica_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MAvaliPratica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AssRuim.
function AssRuim_Callback(hObject, eventdata, handles)
% hObject    handle to AssRuim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorAssi,'string',1);
set(handles.AssRuim, 'Enable', 'off');
set(handles.AssRegular, 'Enable', 'on');
set(handles.AssBom, 'Enable', 'on');
set(handles.AssMuitoBom, 'Enable', 'on');
set(handles.AssExcelente, 'Enable', 'on');



% --- Executes on button press in AssRegular.
function AssRegular_Callback(hObject, eventdata, handles)
% hObject    handle to AssRegular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorAssi,'string',2);
set(handles.AssRuim, 'Enable', 'on');
set(handles.AssRegular, 'Enable', 'off');
set(handles.AssBom, 'Enable', 'on');
set(handles.AssMuitoBom, 'Enable', 'on');
set(handles.AssExcelente, 'Enable', 'on');


% --- Executes on button press in AssBom.
function AssBom_Callback(hObject, eventdata, handles)
% hObject    handle to AssBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorAssi,'string',3);
set(handles.AssRuim, 'Enable', 'on');
set(handles.AssRegular, 'Enable', 'on');
set(handles.AssBom, 'Enable', 'off');
set(handles.AssMuitoBom, 'Enable', 'on');
set(handles.AssExcelente, 'Enable', 'on');

% --- Executes on button press in AssMuitoBom.
function AssMuitoBom_Callback(hObject, eventdata, handles)
% hObject    handle to AssMuitoBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorAssi,'string',4);
set(handles.AssRuim, 'Enable', 'on');
set(handles.AssRegular, 'Enable', 'on');
set(handles.AssBom, 'Enable', 'on');
set(handles.AssMuitoBom, 'Enable', 'off');
set(handles.AssExcelente, 'Enable', 'on');

% --- Executes on button press in AssExcelente.
function AssExcelente_Callback(hObject, eventdata, handles)
% hObject    handle to AssExcelente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorAssi,'string',5);
set(handles.AssRuim, 'Enable', 'on');
set(handles.AssRegular, 'Enable', 'on');
set(handles.AssBom, 'Enable', 'on');
set(handles.AssMuitoBom, 'Enable', 'on');
set(handles.AssExcelente, 'Enable', 'off');

% --- Executes on button press in btAnalisar.
function btAnalisar_Callback(hObject, eventdata, handles)
% hObject    handle to btAnalisar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


    %% Cálculo da saída
    MAVT = str2double(get(handles.MAvaliTeorica,'String'));
    MAVP = str2double(get(handles.MAvaliPratica,'String'));
    Assi = str2double(get(handles.ValorAssi,'String'));
    Rel = str2double(get(handles.ValorRel,'String'));
    verificarToolBox = get(handles.verificar,'Value');
    saida = funcaoFuzzy(MAVT, MAVP, Assi, Rel, verificarToolBox);   
    set(handles.SaidaF,'string',saida);  
    
    
    if (saida < 2)       
         set(handles.TextoSaida,'string',"Inapto");        
    end
    
    if (saida >= 2 && saida < 3)
        set(handles.TextoSaida,'string',"Atenção");
    end
    
    if (saida > 3)
        set(handles.TextoSaida,'string',"Apto");
    end   
    
    
% --- Executes on button press in bt_carregar.
function bt_carregar_Callback(hObject, eventdata, handles)
% hObject    handle to bt_carregar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
%% Carregamento da base de dados
    [file,path,indx] = uigetfile;
    if isequal(file,0)
       disp('Cancelado pelo usuário')
    else
       disp(['Selecionado: ', fullfile(path, file)])
    end
        a = strcat(path,file);
        set(handles.enderecoBase,'string',a);
       
        CarregamentoBase = get(handles.enderecoBase,'string');
        Base = readtable(CarregamentoBase );
        colunaB = size(Base,2);
        Dados = Base{:,1:colunaB};
        

    %% Popular a tabela com os dados carregados
        t = handles.TabelaDados; 
        set(t,'Data',Dados); 


% --- Executes on button press in RelExcelente.
function RelExcelente_Callback(hObject, eventdata, handles)
% hObject    handle to RelExcelente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorRel,'string',5);
set(handles.RelRuim, 'Enable', 'on');
set(handles.RelRegular, 'Enable', 'on');
set(handles.RelBom, 'Enable', 'on');
set(handles.RelMuitoBom, 'Enable', 'on');
set(handles.RelExcelente, 'Enable', 'off');

% --- Executes on button press in RelMuitoBom.
function RelMuitoBom_Callback(hObject, eventdata, handles)
% hObject    handle to RelMuitoBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorRel,'string',4);
set(handles.RelRuim, 'Enable', 'on');
set(handles.RelRegular, 'Enable', 'on');
set(handles.RelBom, 'Enable', 'on');
set(handles.RelMuitoBom, 'Enable', 'off');
set(handles.RelExcelente, 'Enable', 'on');

% --- Executes on button press in RelBom.
function RelBom_Callback(hObject, eventdata, handles)
% hObject    handle to RelBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorRel,'string',3);
set(handles.RelRuim, 'Enable', 'on');
set(handles.RelRegular, 'Enable', 'on');
set(handles.RelBom, 'Enable', 'off');
set(handles.RelMuitoBom, 'Enable', 'on');
set(handles.RelExcelente, 'Enable', 'on');

% --- Executes on button press in RelRegular.
function RelRegular_Callback(hObject, eventdata, handles)
% hObject    handle to RelRegular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorRel,'string',2);
set(handles.RelRuim, 'Enable', 'on');
set(handles.RelRegular, 'Enable', 'off');
set(handles.RelBom, 'Enable', 'on');
set(handles.RelMuitoBom, 'Enable', 'on');
set(handles.RelExcelente, 'Enable', 'on');

% --- Executes on button press in RelRuim.
function RelRuim_Callback(hObject, eventdata, handles)
% hObject    handle to RelRuim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.ValorRel,'string',1);
set(handles.RelRuim, 'Enable', 'off');
set(handles.RelRegular, 'Enable', 'on');
set(handles.RelBom, 'Enable', 'on');
set(handles.RelMuitoBom, 'Enable', 'on');
set(handles.RelExcelente, 'Enable', 'on');

% --- Executes on button press in PontExcelente.
function PontExcelente_Callback(hObject, eventdata, handles)
% hObject    handle to PontExcelente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PontRuim, 'Enable', 'on');
set(handles.PontRegular, 'Enable', 'on');
set(handles.PontBom, 'Enable', 'on');
set(handles.PontMuitoBom, 'Enable', 'on');
set(handles.PontExcelente, 'Enable', 'off');

% --- Executes on button press in PontMuitoBom.
function PontMuitoBom_Callback(hObject, eventdata, handles)
% hObject    handle to PontMuitoBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PontRuim, 'Enable', 'on');
set(handles.PontRegular, 'Enable', 'on');
set(handles.PontBom, 'Enable', 'on');
set(handles.PontMuitoBom, 'Enable', 'off');
set(handles.PontExcelente, 'Enable', 'on');

% --- Executes on button press in PontBom.
function PontBom_Callback(hObject, eventdata, handles)
% hObject    handle to PontBom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PontRuim, 'Enable', 'on');
set(handles.PontRegular, 'Enable', 'on');
set(handles.PontBom, 'Enable', 'off');
set(handles.PontMuitoBom, 'Enable', 'on');
set(handles.PontExcelente, 'Enable', 'on');

% --- Executes on button press in PontRegular.
function PontRegular_Callback(hObject, eventdata, handles)
% hObject    handle to PontRegular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PontRuim, 'Enable', 'on');
set(handles.PontRegular, 'Enable', 'off');
set(handles.PontBom, 'Enable', 'on');
set(handles.PontMuitoBom, 'Enable', 'on');
set(handles.PontExcelente, 'Enable', 'on');

% --- Executes on button press in PontRuim.
function PontRuim_Callback(hObject, eventdata, handles)
% hObject    handle to PontRuim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.PontRuim, 'Enable', 'off');
set(handles.PontRegular, 'Enable', 'on');
set(handles.PontBom, 'Enable', 'on');
set(handles.PontMuitoBom, 'Enable', 'on');
set(handles.PontExcelente, 'Enable', 'on');


% --- Executes when entered data in editable cell(s) in TabelaDados.
function TabelaDados_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to TabelaDados (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in TabelaDados.
function TabelaDados_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to TabelaDados (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
    data = get(hObject,'Data');
    indices = eventdata.Indices;
    linha = indices(:,1);
    tableData = get(handles.TabelaDados, 'data');
        
    Dados = tableData(linha,:);
    MAVT = Dados(1,1,:);
    MAVP = Dados(1,2,:);
    Assi = Dados(1,3,:);
    Rel = Dados(1,4,:);
    
    verificarToolBox = get(handles.verificar,'Value');
    saida = funcaoFuzzy(MAVT, MAVP, Assi, Rel, verificarToolBox);   
    set(handles.SaidaF,'string',saida);  
    
    
    if (saida < 2)       
         set(handles.TextoSaida,'string',"Inapto");        
    end
    
    if (saida >= 2 && saida < 3)
        set(handles.TextoSaida,'string',"Atenção");
    end
    
    if (saida > 3)
        set(handles.TextoSaida,'string',"Apto");
    end 
   
  

% --- Executes on button press in verificar.
function verificar_Callback(hObject, eventdata, handles)
% hObject    handle to verificar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of verificar
