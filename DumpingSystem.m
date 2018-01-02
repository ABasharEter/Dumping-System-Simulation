function varargout = DumpingSystem(varargin)
% DUMPINGSYSTEM MATLAB code for DumpingSystem.fig
%      DUMPINGSYSTEM, by itself, creates a new DUMPINGSYSTEM or raises the existing
%      singleton*.
%
%      H = DUMPINGSYSTEM returns the handle to a new DUMPINGSYSTEM or the handle to
%      the existing singleton*.
%
%      DUMPINGSYSTEM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DUMPINGSYSTEM.M with the given input arguments.
%
%      DUMPINGSYSTEM('Property','Value',...) creates a new DUMPINGSYSTEM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DumpingSystem_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DumpingSystem_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DumpingSystem

% Last Modified by GUIDE v2.5 14-Dec-2017 01:05:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DumpingSystem_OpeningFcn, ...
                   'gui_OutputFcn',  @DumpingSystem_OutputFcn, ...
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


% --- Executes just before DumpingSystem is made visible.
function DumpingSystem_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DumpingSystem (see VARARGIN)

% Choose default command line output for DumpingSystem
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DumpingSystem wait for user response (see UIRESUME)
% uiwait(handles.figure1);
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Outputs from this function are returned to the command line.
function varargout = DumpingSystem_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in simulate.
function simulate_Callback(hObject, eventdata, handles)
% hObject    handle to simulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);
updatefigure(a,b,c,g,handles.axes1);




% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function bSlider_Callback(hObject, eventdata, handles)
% hObject    handle to bSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function bSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on slider movement.
function cSlider_Callback(hObject, eventdata, handles)
% hObject    handle to cSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function cSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gSlider_Callback(hObject, eventdata, handles)
% hObject    handle to gSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function gSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function gainEdit_Callback(hObject, eventdata, handles)
% hObject    handle to gainEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gainEdit as text
%        str2double(get(hObject,'String')) returns contents of gainEdit as a double
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = str2num(get(handles.gainEdit,'String'));
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function gainEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gainEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aEdit_Callback(hObject, eventdata, handles)
% hObject    handle to aEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aEdit as text
%        str2double(get(hObject,'String')) returns contents of aEdit as a double
a = num2str(get(handles.aEdit,'String'));
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);


% --- Executes during object creation, after setting all properties.
function aEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bEdit_Callback(hObject, eventdata, handles)
% hObject    handle to bEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bEdit as text
%        str2double(get(hObject,'String')) returns contents of bEdit as a double
a = get(handles.aSlider,'value');
b = str2num(get(handles.bEdit,'String'));
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);


% --- Executes during object creation, after setting all properties.
function bEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cEdit_Callback(hObject, eventdata, handles)
% hObject    handle to cEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cEdit as text
%        str2double(get(hObject,'String')) returns contents of cEdit as a double
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = str2num(get(handles.cEdit,'String'));
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function cEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function aSlider_Callback(hObject, eventdata, handles)
% hObject    handle to aSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = get(handles.aSlider,'value');
b = get(handles.bSlider,'value');
c = get(handles.cSlider,'value');
g = get(handles.gSlider,'value');
setvalues(a,b,c,g,handles);

% --- Executes during object creation, after setting all properties.
function aSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function updatefigure(a,b,c,g,hand)
simtime=100;
[y,t]=step(tf(g,[a,b,c]),simtime);
axes(hand);

plot(t,y,'Linewidth',2);
hold on
axis([0,simtime,min(y),max(y)]);grid
hold off

function setvalues(a,b,c,g,handles)
set(handles.aSlider,'value',a);
set(handles.bSlider,'value',b);
set(handles.cSlider,'value',c);
set(handles.gSlider,'value',g);
set(handles.gainEdit,'String',num2str(g))
set(handles.aEdit,'String',num2str(a))
set(handles.bEdit,'String',num2str(b))
set(handles.cEdit,'String',num2str(c))
wn = sqrt(c/a);
zeta = b/(2*wn*a);

set(handles.zetaText,'String',num2str(zeta))

set(handles.wnText,'String',num2str(wn))

if(zeta == 1)
    set(handles.dumperTypeText,'String','critical dumped')
elseif(zeta>1)
    set(handles.dumperTypeText,'String','overdumped')
else
    set(handles.dumperTypeText,'String','underdumped')
end
