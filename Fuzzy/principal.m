%% Fuzzy - Trabalho 3
% Disciplina: Inteligência Computacional Aplicada
% Discente: Carlos Estevão Bastos Sousa
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

% Last Modified by GUIDE v2.5 03-Jun-2018 15:35:20

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



function Renda_Callback(~, eventdata, handles)
% hObject    handle to Renda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Renda as text
%        str2double(get(hObject,'String')) returns contents of Renda as a double


% --- Executes during object creation, after setting all properties.
function Renda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Renda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Divida_Callback(hObject, eventdata, handles)
% hObject    handle to Divida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Divida as text
%        str2double(get(hObject,'String')) returns contents of Divida as a double


% --- Executes during object creation, after setting all properties.
function Divida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Divida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Historico_Callback(hObject, eventdata, handles)
% hObject    handle to Historico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Historico as text
%        str2double(get(hObject,'String')) returns contents of Historico as a double


% --- Executes during object creation, after setting all properties.
function Historico_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Historico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double


% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit38_Callback(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit38 as text
%        str2double(get(hObject,'String')) returns contents of edit38 as a double


% --- Executes during object creation, after setting all properties.
function edit38_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit37_Callback(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit37 as text
%        str2double(get(hObject,'String')) returns contents of edit37 as a double


% --- Executes during object creation, after setting all properties.
function edit37_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit36_Callback(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit36 as text
%        str2double(get(hObject,'String')) returns contents of edit36 as a double


% --- Executes during object creation, after setting all properties.
function edit36_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit34_Callback(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit34 as text
%        str2double(get(hObject,'String')) returns contents of edit34 as a double


% --- Executes during object creation, after setting all properties.
function edit34_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit33_Callback(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit33 as text
%        str2double(get(hObject,'String')) returns contents of edit33 as a double


% --- Executes during object creation, after setting all properties.
function edit33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RB1_Callback(hObject, eventdata, handles)
% hObject    handle to RB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RB1 as text
%        str2double(get(hObject,'String')) returns contents of RB1 as a double


% --- Executes during object creation, after setting all properties.
function RB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RB2_Callback(hObject, eventdata, handles)
% hObject    handle to RB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RB2 as text
%        str2double(get(hObject,'String')) returns contents of RB2 as a double


% --- Executes during object creation, after setting all properties.
function RB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RB3_Callback(~, eventdata, handles)
% hObject    handle to RB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RB3 as text
%        str2double(get(hObject,'String')) returns contents of RB3 as a double


% --- Executes during object creation, after setting all properties.
function RB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RM1_Callback(hObject, eventdata, handles)
% hObject    handle to RM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RM1 as text
%        str2double(get(hObject,'String')) returns contents of RM1 as a double


% --- Executes during object creation, after setting all properties.
function RM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RM2_Callback(hObject, eventdata, handles)
% hObject    handle to RM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RM2 as text
%        str2double(get(hObject,'String')) returns contents of RM2 as a double


% --- Executes during object creation, after setting all properties.
function RM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RM3_Callback(hObject, eventdata, handles)
% hObject    handle to RM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RM3 as text
%        str2double(get(hObject,'String')) returns contents of RM3 as a double


% --- Executes during object creation, after setting all properties.
function RM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RA1_Callback(hObject, eventdata, handles)
% hObject    handle to RA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RA1 as text
%        str2double(get(hObject,'String')) returns contents of RA1 as a double


% --- Executes during object creation, after setting all properties.
function RA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RA2_Callback(hObject, eventdata, handles)
% hObject    handle to RA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RA2 as text
%        str2double(get(hObject,'String')) returns contents of RA2 as a double


% --- Executes during object creation, after setting all properties.
function RA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function RA3_Callback(hObject, eventdata, handles)
% hObject    handle to RA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RA3 as text
%        str2double(get(hObject,'String')) returns contents of RA3 as a double


% --- Executes during object creation, after setting all properties.
function RA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VA3_Callback(hObject, eventdata, handles)
% hObject    handle to VA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VA3 as text
%        str2double(get(hObject,'String')) returns contents of VA3 as a double


% --- Executes during object creation, after setting all properties.
function VA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VA2_Callback(hObject, eventdata, handles)
% hObject    handle to VA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VA2 as text
%        str2double(get(hObject,'String')) returns contents of VA2 as a double


% --- Executes during object creation, after setting all properties.
function VA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VA1_Callback(hObject, eventdata, handles)
% hObject    handle to VA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VA1 as text
%        str2double(get(hObject,'String')) returns contents of VA1 as a double


% --- Executes during object creation, after setting all properties.
function VA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VM3_Callback(hObject, eventdata, handles)
% hObject    handle to VM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VM3 as text
%        str2double(get(hObject,'String')) returns contents of VM3 as a double


% --- Executes during object creation, after setting all properties.
function VM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VM2_Callback(hObject, eventdata, handles)
% hObject    handle to VM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VM2 as text
%        str2double(get(hObject,'String')) returns contents of VM2 as a double


% --- Executes during object creation, after setting all properties.
function VM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VM1_Callback(hObject, eventdata, handles)
% hObject    handle to VM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VM1 as text
%        str2double(get(hObject,'String')) returns contents of VM1 as a double


% --- Executes during object creation, after setting all properties.
function VM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VB3_Callback(hObject, eventdata, handles)
% hObject    handle to VB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VB3 as text
%        str2double(get(hObject,'String')) returns contents of VB3 as a double


% --- Executes during object creation, after setting all properties.
function VB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VB2_Callback(hObject, eventdata, handles)
% hObject    handle to VB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VB2 as text
%        str2double(get(hObject,'String')) returns contents of VB2 as a double


% --- Executes during object creation, after setting all properties.
function VB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function VB1_Callback(hObject, eventdata, handles)
% hObject    handle to VB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of VB1 as text
%        str2double(get(hObject,'String')) returns contents of VB1 as a double


% --- Executes during object creation, after setting all properties.
function VB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to VB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HB1_Callback(hObject, eventdata, handles)
% hObject    handle to HB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HB1 as text
%        str2double(get(hObject,'String')) returns contents of HB1 as a double


% --- Executes during object creation, after setting all properties.
function HB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HB2_Callback(hObject, eventdata, handles)
% hObject    handle to HB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HB2 as text
%        str2double(get(hObject,'String')) returns contents of HB2 as a double


% --- Executes during object creation, after setting all properties.
function HB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HB3_Callback(hObject, eventdata, handles)
% hObject    handle to HB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HB3 as text
%        str2double(get(hObject,'String')) returns contents of HB3 as a double


% --- Executes during object creation, after setting all properties.
function HB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HM1_Callback(hObject, eventdata, handles)
% hObject    handle to HM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HM1 as text
%        str2double(get(hObject,'String')) returns contents of HM1 as a double


% --- Executes during object creation, after setting all properties.
function HM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HM2_Callback(hObject, eventdata, handles)
% hObject    handle to HM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HM2 as text
%        str2double(get(hObject,'String')) returns contents of HM2 as a double


% --- Executes during object creation, after setting all properties.
function HM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HM3_Callback(hObject, eventdata, handles)
% hObject    handle to HM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HM3 as text
%        str2double(get(hObject,'String')) returns contents of HM3 as a double


% --- Executes during object creation, after setting all properties.
function HM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HA1_Callback(hObject, eventdata, handles)
% hObject    handle to HA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HA1 as text
%        str2double(get(hObject,'String')) returns contents of HA1 as a double


% --- Executes during object creation, after setting all properties.
function HA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HA2_Callback(hObject, eventdata, handles)
% hObject    handle to HA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HA2 as text
%        str2double(get(hObject,'String')) returns contents of HA2 as a double


% --- Executes during object creation, after setting all properties.
function HA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function HA3_Callback(hObject, eventdata, handles)
% hObject    handle to HA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HA3 as text
%        str2double(get(hObject,'String')) returns contents of HA3 as a double


% --- Executes during object creation, after setting all properties.
function HA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DA3_Callback(hObject, eventdata, handles)
% hObject    handle to DA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DA3 as text
%        str2double(get(hObject,'String')) returns contents of DA3 as a double


% --- Executes during object creation, after setting all properties.
function DA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DA2_Callback(hObject, eventdata, handles)
% hObject    handle to DA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DA2 as text
%        str2double(get(hObject,'String')) returns contents of DA2 as a double


% --- Executes during object creation, after setting all properties.
function DA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DA1_Callback(hObject, eventdata, handles)
% hObject    handle to DA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DA1 as text
%        str2double(get(hObject,'String')) returns contents of DA1 as a double


% --- Executes during object creation, after setting all properties.
function DA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DM3_Callback(hObject, eventdata, handles)
% hObject    handle to DM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DM3 as text
%        str2double(get(hObject,'String')) returns contents of DM3 as a double


% --- Executes during object creation, after setting all properties.
function DM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DM2_Callback(hObject, eventdata, handles)
% hObject    handle to DM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DM2 as text
%        str2double(get(hObject,'String')) returns contents of DM2 as a double


% --- Executes during object creation, after setting all properties.
function DM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DM1_Callback(hObject, eventdata, handles)
% hObject    handle to DM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DM1 as text
%        str2double(get(hObject,'String')) returns contents of DM1 as a double


% --- Executes during object creation, after setting all properties.
function DM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DB3_Callback(hObject, eventdata, handles)
% hObject    handle to DB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DB3 as text
%        str2double(get(hObject,'String')) returns contents of DB3 as a double


% --- Executes during object creation, after setting all properties.
function DB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DB2_Callback(hObject, eventdata, handles)
% hObject    handle to DB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DB2 as text
%        str2double(get(hObject,'String')) returns contents of DB2 as a double


% --- Executes during object creation, after setting all properties.
function DB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function DB1_Callback(hObject, eventdata, handles)
% hObject    handle to DB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DB1 as text
%        str2double(get(hObject,'String')) returns contents of DB1 as a double


% --- Executes during object creation, after setting all properties.
function DB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Valor_Callback(hObject, eventdata, handles)
% hObject    handle to Valor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Valor as text
%        str2double(get(hObject,'String')) returns contents of Valor as a double


% --- Executes during object creation, after setting all properties.
function Valor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Valor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_calcular.
function bt_calcular_Callback(hObject, eventdata, handles)
% hObject    handle to bt_calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


try

        %% Criação do arquivo fis
        fis = newfis('regras');

        %% Coleta dos dados relacionados a renda
        RendaBaixa1 = (str2double(get(handles.RB1,'string')));
        RendaBaixa2 = (str2double(get(handles.RB2,'string')));
        RendaBaixa3 = (str2double(get(handles.RB3,'string')));
        RendaMedia1 = (str2double(get(handles.RM1,'string')));
        RendaMedia2 = (str2double(get(handles.RM2,'string')));
        RendaMedia3 = (str2double(get(handles.RM3,'string')));
        RendaAlta1 = (str2double(get(handles.RA1,'string')));
        RendaAlta2 = (str2double(get(handles.RA2,'string')));
        RendaAlta3 = (str2double(get(handles.RA3,'string')));

        %% Coleta dos dados relacionados a dívida
        DividaBaixa1 = (str2double(get(handles.DB1,'string')));
        DividaBaixa2 = (str2double(get(handles.DB2,'string')));
        DividaBaixa3 = (str2double(get(handles.DB3,'string')));
        DividaMedia1 = (str2double(get(handles.DM1,'string')));
        DividaMedia2 = (str2double(get(handles.DM2,'string')));
        DividaMedia3 = (str2double(get(handles.DM3,'string')));
        DividaAlta1 = (str2double(get(handles.DA1,'string')));
        DividaAlta2 = (str2double(get(handles.DA2,'string')));
        DividaAlta3 = (str2double(get(handles.DA3,'string')));

        %% Coleta dos dados relacionados ao histórico
        HistoricoBaixa1 = (str2double(get(handles.DB1,'string')));
        HistoricoBaixa2 = (str2double(get(handles.DB2,'string')));
        HistoricoBaixa3 = (str2double(get(handles.DB3,'string')));
        HistoricoMedia1 = (str2double(get(handles.DM1,'string')));
        HistoricoMedia2 = (str2double(get(handles.DM2,'string')));
        HistoricoMedia3 = (str2double(get(handles.DM3,'string')));
        HistoricoAlta1 = (str2double(get(handles.DA1,'string')));
        HistoricoAlta2 = (str2double(get(handles.DA2,'string')));
        HistoricoAlta3 = (str2double(get(handles.DA3,'string')));

        %% Coleta dos dados relacionados ao valor do crédito
        CreditoBaixo1 = (str2double(get(handles.VB1,'string')));
        CreditoBaixo2 = (str2double(get(handles.VB2,'string')));
        CreditoBaixo3 = (str2double(get(handles.VB3,'string')));
        CreditoMedio1 = (str2double(get(handles.VM1,'string')));
        CreditoMedio2 = (str2double(get(handles.VM2,'string')));
        CreditoMedio3 = (str2double(get(handles.VM3,'string')));
        CreditoAlto1 = (str2double(get(handles.VA1,'string')));
        CreditoAlto2 = (str2double(get(handles.VA2,'string')));
        CreditoAlto3 = (str2double(get(handles.VA3,'string')));

        %% Coleta dos dados relacionados a análise
        AnaliseBaixo1 = (str2double(get(handles.AB1,'string')));
        AnaliseBaixo2 = (str2double(get(handles.AB2,'string')));
        AnaliseBaixo3 = (str2double(get(handles.AB3,'string')));
        AnaliseMedio1 = (str2double(get(handles.AM1,'string')));
        AnaliseMedio2 = (str2double(get(handles.AM2,'string')));
        AnaliseMedio3 = (str2double(get(handles.AM3,'string')));
        AnaliseAlto1 = (str2double(get(handles.AA1,'string')));
        AnaliseAlto2 = (str2double(get(handles.AA2,'string')));
        AnaliseAlto3 = (str2double(get(handles.AA3,'string')));

        %% Criação do input 1 - Renda e suas variáveis
        fis = addvar(fis,'input','Renda',[RendaBaixa1 RendaAlta3]);
        fis = addmf(fis,'input',1,'baixa','trimf',[RendaBaixa1 RendaBaixa2 RendaBaixa3]);
        fis = addmf(fis,'input',1,'media','trimf',[RendaMedia1 RendaMedia2 RendaMedia3]);
        fis = addmf(fis,'input',1,'alta','trimf',[RendaAlta1 RendaAlta2 RendaAlta3]);

        %% Criação do input 2 -  Dívida e suas variáveis
        fis = addvar(fis,'input','Divida',[DividaBaixa1 DividaAlta3]);
        fis = addmf(fis,'input',2,'baixa','trimf',[DividaBaixa1 DividaBaixa2 DividaBaixa3]);
        fis = addmf(fis,'input',2,'media','trimf',[DividaMedia1 DividaMedia2 DividaMedia3]);
        fis = addmf(fis,'input',2,'alta','trimf',[DividaAlta1 DividaAlta2 DividaAlta3]);

        %% Criação do input 3 - Histórico e suas variáveis
        fis = addvar(fis,'input','Historico',[HistoricoBaixa1 HistoricoAlta3]);
        fis = addmf(fis,'input',3,'ruim','trimf',[HistoricoBaixa1 HistoricoBaixa2 HistoricoBaixa3]);
        fis = addmf(fis,'input',3,'regular','trimf',[HistoricoMedia1 HistoricoMedia2 HistoricoMedia3]);
        fis = addmf(fis,'input',3,'bom','trimf',[HistoricoAlta1 HistoricoAlta2 HistoricoAlta3]);

        % %% Criação do input 4 - Crédito e suas variáveis
        fis = addvar(fis,'input','Historico',[CreditoBaixo1 CreditoAlto3]);
        fis = addmf(fis,'input',4,'ruim','trimf',[CreditoBaixo1 CreditoBaixo2 CreditoBaixo3]);
        fis = addmf(fis,'input',4,'regular','trimf',[CreditoMedio1 CreditoMedio2 CreditoMedio3]);
        fis = addmf(fis,'input',4,'bom','trimf',[CreditoAlto1 CreditoAlto2 CreditoAlto3]);

        % %% Criação do output 1 - da Análise
        fis = addvar(fis,'output','Risco',[AnaliseBaixo1 AnaliseAlto3]);
        fis = addmf(fis,'output',1,'baixo','trimf',[AnaliseBaixo1 AnaliseBaixo2 AnaliseBaixo3]);
        fis = addmf(fis,'output',1,'medio','trimf',[AnaliseMedio1 AnaliseMedio2 AnaliseMedio3]);
        fis = addmf(fis,'output',1,'alto','trimf',[AnaliseAlto1 AnaliseAlto2 AnaliseAlto3]);

        %% Criação das regras
        % Especificação das regras conforme o site MathWorks.com (com adaptação para mais colunas)
        % Column 1 - Index of membership function for first input
        % Column 2 - Index of membership function for second input
        % Column 3 - Index of membership function for second input
        % Column 4 - Index of membership function for second input
        % Column 5 - Index of membership function for output
        % Column 6 - Rule weight
        % Column 7 - Fuzzy operator (1 for AND, 2 for OR)
        % Fonte: https://www.mathworks.com/help/fuzzy/working-from-the-command-line.html

        ListaDeRegras = [ ...
        1	1	1	1	2	1	1
        1	1	1	2	3	1	1
        1	1	1	3	3	1	1
        1	1	2	1	2	1	1
        1	1	2	2	3	1	1
        1	1	2	3	3	1	1
        1	1	3	1	1	1	1
        1	1	3	2	2	1	1
        1	1	3	3	3	1	1
        1	2	1	1	2	1	1
        1	2	1	2	3	1	1
        1	2	1	3	3	1	1
        1	2	2	1	3	1	1
        1	2	2	2	3	1	1
        1	2	2	3	3	1	1
        1	2	3	1	3	1	1
        1	2	3	2	3	1	1
        1	2	3	3	3	1	1
        1	3	1	1	3	1	1
        1	3	1	2	3	1	1
        1	3	1	3	3	1	1
        1	3	2	1	3	1	1
        1	3	2	2	3	1	1
        1	3	2	3	3	1	1
        1	3	3	1	3	1	1
        1	3	3	2	3	1	1
        1	3	3	3	3	1	1
        2	1	1	1	1	1	1
        2	1	1	2	2	1	1
        2	1	1	3	3	1	1
        2	1	2	1	1	1	1
        2	1	2	2	2	1	1
        2	1	2	3	2	1	1
        2	1	3	1	1	1	1
        2	1	3	2	1	1	1
        2	1	3	3	2	1	1
        2	2	1	1	2	1	1
        2	2	1	2	3	1	1
        2	2	1	3	3	1	1
        2	2	2	1	2	1	1
        2	2	2	2	2	1	1
        2	2	2	3	3	1	1
        2	2	3	1	2	1	1
        2	2	3	2	2	1	1
        2	2	3	3	2	1	1
        2	3	1	1	3	1	1
        2	3	1	2	3	1	1
        2	3	1	3	3	1	1
        2	3	2	1	3	1	1
        2	3	2	2	3	1	1
        2	3	2	3	3	1	1
        2	3	3	1	2	1	1
        2	3	3	2	3	1	1
        2	3	3	3	3	1	1
        3	1	1	1	1	1	1
        3	1	1	2	2	1	1
        3	1	1	3	2	1	1
        3	1	2	1	1	1	1
        3	1	2	2	1	1	1
        3	1	2	3	2	1	1
        3	1	3	1	1	1	1
        3	1	3	2	1	1	1
        3	1	3	3	1	1	1
        3	2	1	1	1	1	1
        3	2	1	2	2	1	1
        3	2	1	3	3	1	1
        3	2	2	1	2	1	1
        3	2	2	2	2	1	1
        3	2	2	3	3	1	1
        3	2	3	1	1	1	1
        3	2	3	2	2	1	1
        3	2	3	3	3	1	1
        3	3	1	1	3	1	1
        3	3	1	2	3	1	1
        3	3	1	3	3	1	1
        3	3	2	1	2	1	1
        3	3	2	2	3	1	1
        3	3	2	3	3	1	1
        3	3	3	1	2	1	1
        3	3	3	2	3	1	1
        3	3	3	3	3	1	1 ];
        fis = addrule(fis,ListaDeRegras);

        %% Cálculo da saída
        RendaObtida = (str2double(get(handles.Renda,'string')));
        DividaObtida = (str2double(get(handles.Divida,'string')));
        HistoricoObtido = (str2double(get(handles.Historico,'string')));
        ValorObtido = (str2double(get(handles.Valor,'string')));

        saida =  evalfis([RendaObtida DividaObtida HistoricoObtido ValorObtido], fis);
        set(handles.ResultValor,'string',saida);


        if (saida < AnaliseBaixo3)
            set(handles.Result,'string',"Risco baixo");
        end

        if (saida >= AnaliseBaixo3 && saida < AnaliseMedio3)
            set(handles.Result,'string',"Risco médio");
        end

        if (saida >= AnaliseAlto1)
            set(handles.Result,'string',"Risco alto");
        end


        %% Plotagens
            axes(handles.axes1);
            plotmf(fis,'input',1);
            set(gca,'FontSize',4);


            axes(handles.axes8);
            plotmf(fis,'input',2);
            set(gca,'FontSize',4);

            axes(handles.axes9);
            plotmf(fis,'input',3);
            set(gca,'FontSize',4);

            axes(handles.axes10);
            plotmf(fis,'input',4);
            set(gca,'FontSize',4);

%         delete('regras')

catch e
   set(handles.Result,'string',"Verifique os dados");
end
    
function AB1_Callback(hObject, eventdata, handles)
% hObject    handle to AB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AB1 as text
%        str2double(get(hObject,'String')) returns contents of AB1 as a double


% --- Executes during object creation, after setting all properties.
function AB1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AB1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AB2_Callback(hObject, eventdata, handles)
% hObject    handle to AB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AB2 as text
%        str2double(get(hObject,'String')) returns contents of AB2 as a double


% --- Executes during object creation, after setting all properties.
function AB2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AB2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AB3_Callback(hObject, eventdata, handles)
% hObject    handle to AB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AB3 as text
%        str2double(get(hObject,'String')) returns contents of AB3 as a double


% --- Executes during object creation, after setting all properties.
function AB3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AB3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AM1_Callback(hObject, eventdata, handles)
% hObject    handle to AM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AM1 as text
%        str2double(get(hObject,'String')) returns contents of AM1 as a double


% --- Executes during object creation, after setting all properties.
function AM1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AM1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AM2_Callback(hObject, eventdata, handles)
% hObject    handle to AM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AM2 as text
%        str2double(get(hObject,'String')) returns contents of AM2 as a double


% --- Executes during object creation, after setting all properties.
function AM2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AM2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AM3_Callback(hObject, eventdata, handles)
% hObject    handle to AM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AM3 as text
%        str2double(get(hObject,'String')) returns contents of AM3 as a double


% --- Executes during object creation, after setting all properties.
function AM3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AM3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AA1_Callback(hObject, eventdata, handles)
% hObject    handle to AA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AA1 as text
%        str2double(get(hObject,'String')) returns contents of AA1 as a double


% --- Executes during object creation, after setting all properties.
function AA1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AA1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AA2_Callback(hObject, eventdata, handles)
% hObject    handle to AA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AA2 as text
%        str2double(get(hObject,'String')) returns contents of AA2 as a double


% --- Executes during object creation, after setting all properties.
function AA2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AA2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AA3_Callback(hObject, eventdata, handles)
% hObject    handle to AA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AA3 as text
%        str2double(get(hObject,'String')) returns contents of AA3 as a double


% --- Executes during object creation, after setting all properties.
function AA3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AA3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt_regras.
function bt_regras_Callback(hObject, eventdata, handles)
% hObject    handle to bt_regras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
