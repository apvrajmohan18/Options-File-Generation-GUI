function varargout = NEW_OPTIONS_FILE_GUI(varargin)
% NEW_OPTIONS_FILE_GUI MATLAB code for NEW_OPTIONS_FILE_GUI.fig
%      NEW_OPTIONS_FILE_GUI, by itself, creates a new NEW_OPTIONS_FILE_GUI or raises the existing
%      singleton*.
%
%      H = NEW_OPTIONS_FILE_GUI returns the handle to a new NEW_OPTIONS_FILE_GUI or the handle to
%      the existing singleton*.
%
%      NEW_OPTIONS_FILE_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEW_OPTIONS_FILE_GUI.M with the given input arguments.
%
%      NEW_OPTIONS_FILE_GUI('Property','Value',...) creates a new NEW_OPTIONS_FILE_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before NEW_OPTIONS_FILE_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to NEW_OPTIONS_FILE_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help NEW_OPTIONS_FILE_GUI

% Last Modified by GUIDE v2.5 03-Aug-2021 16:41:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @NEW_OPTIONS_FILE_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @NEW_OPTIONS_FILE_GUI_OutputFcn, ...
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


% --- Executes just before NEW_OPTIONS_FILE_GUI is made visible.
function NEW_OPTIONS_FILE_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to NEW_OPTIONS_FILE_GUI (see VARARGIN)

% Choose default command line output for NEW_OPTIONS_FILE_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes NEW_OPTIONS_FILE_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = NEW_OPTIONS_FILE_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2

%%
%% value1 = get(handles.checkbox1, 'Value');
% value2 = get(handles.checkbox2, 'Value');
%   
% if value1==1 & value2==1
%     warndlg(strcat('MATLAB versions Prior to 2016 will be sundowned'))
% end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% value1 = get(handles.checkbox1, 'Value');
% value2 = get(handles.checkbox2, 'Value');
%   
% if value1==1 & value2==1
%     warndlg(strcat('MATLAB versions Prior to 2016 will be sundowned'))
% end
% value1 = get(handles.checkbox1, 'Value');
% value2 = get(handles.checkbox2, 'Value');
%   


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


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file file1 
global T0 T data TT TTa rr cc

contents = get(handles.popupmenu1,'String'); 
popupmenu1value = contents{get(handles.popupmenu1,'Value')};
popupmenu1value

%load TT   
T1 = []

switch popupmenu1value
   %% Condition 8
    case '#LOCKED autosar_blockset_nnusers_98457'
        'hi8' 
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{1,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11g = T(1,1) ; y12g = T(1,2);

        yy1g = table2array(y11g) +" "+ table2array(y12g)
                pause(1)
        if yy1g == '#LOCKED autosar_blockset_nnusers_98457'
            
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{1,1} = strcat('-',T{1,1})
                 TT(1,2:end) =  T(1,2:end)
                  
                 TTa{15,1} = strcat('-',T{1,1})
                 TTa(15,2:cc) =  T(1,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp8a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp8 = str2num(char(lower(xxpp8a)));
                 
           for mt = 1:xxpp8                    
                 xx8 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2.5 40]);    
                xx8a = char(lower(xx8)) 
                xx8a = string(xx8)
                 ss1g = cell2mat(xx8a)
                 ss2g = strsplit(ss1g,",")
                 ss3g = cell2table(ss2g)
                 newStrrg =  erase(table2array(T(:,3:end)),table2array(ss3g))
                 T(:,3:end) =   (newStrrg)
                 break
            end % for
                 TFg = ismissing(T)
                 save Taa
                 pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx08 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx8aa = str2num(char(lower(xx08)));
                
                           xxa8 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx8a = char(lower(xxa8)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1g = cell2mat(string(xx8a))
                                ssa2g = strsplit(ssa1g,",")
                                 ssa3g = string(ssa2g)
                                 
                                 ssssg = size(ssa2g,2) 
                                 i1= 1 ; [row7,col7] = find(TF(1,:)==1)
                                 
                                phh7 =[];
                                for uy7= 1:ssssg;
                                    phh7(uy7) = [col7(uy7)];
                                end;
                                disp(phh7)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFg = ismissing(T)
                for j1g = 1:ssssg
                    for ph1g = phh7    
                              disp(ph1g)                 %          
                         if TFg(1,ph1g) ==1  
                             disp(ssa3g(j1g))
                             T(1,ph1g) = array2table( cellstr(ssa3g(j1g)))
                             TFg = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{16,1} = strcat('+',T{1,1})
                 TTa(16,2:cc) =  T(1,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{16,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{1,1} = strcat('-',T{1,1})
                 TT(1,2:end) =  T(21,2:end)
                  
                 TTa{15,1} = strcat('-',T{1,1})
                 TTa(15,2:cc) =  T(1,2:cc)
                                  
                 TTa{16,1} = strcat('+',T{1,1})
                 TTa(16,2:cc) =  T(1,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{16,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#LOCKED autosar_blockset_nnusers_98457'
        %%
        %%
    %% Condition   '#INCLUDE_BORROW AUTOSAR_Blockset:asset_info=98457'

    case '#INCLUDE_BORROW AUTOSAR_Blockset:asset_info=98457'
        'hi9'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{2,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11h = T(2,1) ; y12h = T(2,2);

        yy1h = table2array(y11h) +" "+ table2array(y12h)
                pause(1)
        if yy1h == '#INCLUDE_BORROW AUTOSAR_Blockset:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{2,1} = strcat('-',T{2,1})
                 TT(2,2:end) =  T(2,2:end)
                  
                 TTa{17,1} = strcat('-',T{2,1})
                 TTa(17,2:cc) =  T(2,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp9a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp9 = str2num(char(lower(xxpp9a)));
                 
           for mt = 1:xxpp9                    
                 xx9 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2.5 40]);    
                xx9a = char(lower(xx9)) 
                xx9a = string(xx9)
                 ss1h = cell2mat(xx9a)
                 ss2h = strsplit(ss1h,",")
                 ss3h = cell2table(ss2h)
                 newStrrh =  erase(table2array(T(:,3:end)),table2array(ss3h))
                 T(:,3:end) =   (newStrrh)
                 break
            end % for
                 TFh = ismissing(T)
                 save Taa
                 pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx09 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx9aa = str2num(char(lower(xx09)));
                
                           xxa9 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx9a = char(lower(xxa9)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1h = cell2mat(string(xx9a))
                                ssa2h = strsplit(ssa1h,",")
                                 ssa3h = string(ssa2h)
                                 
                                 ssssh = size(ssa2h,2) 
                                 i1= 2 ; [row8,col8] = find(TF(2,:)==1)
                                 
                                phh8 =[];
                                for uy8= 1:ssssh;
                                    phh8(uy8) = [col8(uy8)];
                                end;
                                disp(phh8)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFh = ismissing(T)
                for j1h = 1:ssssh
                    for ph1h = phh8    
                              disp(ph1h)                 %          
                         if TFh(2,ph1h) ==1  
                             disp(ssa3h(j1h))
                             T(2,ph1h) = array2table( cellstr(ssa3h(j1h)))
                             TFh = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{18,1} = strcat('+',T{2,1})
                 TTa(18,2:cc) =  T(2,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{18,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{2,1} = strcat('-',T{2,1})
                 TT(2,2:end) =  T(2,2:end)
                  
                 TTa{17,1} = strcat('-',T{2,1})
                 TTa(17,2:cc) =  T(2,2:cc)
                                  
                 TTa{18,1} = strcat('+',T{2,1})
                 TTa(18,2:cc) =  T(2,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{18,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#INCLUDE_BORROW AUTOSAR_Blockset:asset_info=98457'
        %%
        %%
        %% 
  %% Condition #LOCKED fixed_point_toolbox:asset_info=98457
    case '#LOCKED fixed_point_toolbox:asset_info=98457'
        'hi10'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{3,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11i = T(3,1) ; y12i = T(3,2);

        yy1i = table2array(y11i) +" "+ table2array(y12i)
                pause(1)
        if yy1i == '#LOCKED fixed_point_toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{3,1} = strcat('-',T{3,1})
                 TT(3,2:end) =  T(3,2:end)
                  
                 TTa{19,1} = strcat('-',T{3,1})
                 TTa(19,2:cc) =  T(3,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp10a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp10 = str2num(char(lower(xxpp10a)));
                 
                   for mt = 1:xxpp10                    
                         xx10 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx10a = char(lower(xx10)) 
                        xx10a = string(xx10)
                         ss1i = cell2mat(xx10a)
                         ss2i = strsplit(ss1i,",")
                         ss3i = cell2table(ss2i)
                         newStrri =  erase(table2array(T(:,3:end)),table2array(ss3i))
                         T(:,3:end) =   (newStrri)
                         break
                    end % for
                         TFi = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx010 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx10aa = str2num(char(lower(xx010)));
                
                           xxa10 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx10a = char(lower(xxa10)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1i = cell2mat(string(xx10a))
                                ssa2i = strsplit(ssa1i,",")
                                 ssa3i = string(ssa2i)
                                 
                                 ssssi = size(ssa2i,2) 
                                 i1= 3 ; [row9,col9] = find(TF(3,:)==1)
                                 
                                phh9 =[];
                                for uy9= 1:ssssi;
                                    phh9(uy9) = [col9(uy9)];
                                end;
                                disp(phh9)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFi = ismissing(T)
                for j1i = 1:ssssi
                    for ph1i = phh9    
                              disp(ph1i)                 %          
                         if TFi(3,ph1i) ==1  
                             disp(ssa3i(j1i))
                             T(3,ph1i) = array2table( cellstr(ssa3i(j1i)))
                             TFi = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{20,1} = strcat('+',T{3,1})
                 TTa(20,2:cc) =  T(3,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{20,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{3,1} = strcat('-',T{3,1})
                 TT(3,2:end) =  T(3,2:end)
                  
                 TTa{19,1} = strcat('-',T{3,1})
                 TTa(19,2:cc) =  T(3,2:cc)
                                  
                 TTa{20,1} = strcat('+',T{3,1})
                 TTa(20,2:cc) =  T(3,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{20,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if '#LOCKED fixed_point_toolbox:asset_info=98457'
        %%
        %%
        %%
   %% Condition '#INCLUDE_BORROW fixed_point_toolbox:asset_info=98457'
    case '#INCLUDE_BORROW fixed_point_toolbox:asset_info=98457'
        'hi11'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{4,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11j = T(4,1) ; y12j = T(4,2);

        yy1j = table2array(y11j) +" "+ table2array(y12j)
                pause(1)
        if yy1j == '#INCLUDE_BORROW fixed_point_toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{4,1} = strcat('-',T{4,1})
                 TT(4,2:end) =  T(4,2:end)
                  
                 TTa{21,1} = strcat('-',T{4,1})
                 TTa(21,2:cc) =  T(4,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp11a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp11 = str2num(char(lower(xxpp11a)));
                 
                   for mt = 1:xxpp11                    
                         xx11 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx11a = char(lower(xx11)) 
                        xx11a = string(xx11)
                         ss1j = cell2mat(xx11a)
                         ss2j = strsplit(ss1j,",")
                         ss3j = cell2table(ss2j)
                         newStrrj =  erase(table2array(T(:,3:end)),table2array(ss3j))
                         T(:,3:end) =   (newStrrj)
                         break
                    end % for
                         TFj = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx011 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx11aa = str2num(char(lower(xx011)));
                
                           xxa11 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx11a = char(lower(xxa11)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1j = cell2mat(string(xx11a))
                                ssa2j = strsplit(ssa1j,",")
                                 ssa3j = string(ssa2j)
                                 
                                 ssssj = size(ssa2j,2) 
                                 i1= 4 ; [row10,col10] = find(TF(4,:)==1)
                                 
                                phh10 =[];
                                for uy10= 1:ssssj;
                                    phh10(uy10) = [col10(uy10)];
                                end;
                                disp(phh10)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFj = ismissing(T)
                for j1j = 1:ssssj
                    for ph1j = phh10    
                              disp(ph1j)                 %          
                         if TFj(4,ph1j) ==1  
                             disp(ssa3j(j1j))
                             T(4,ph1j) = array2table( cellstr(ssa3j(j1j)))
                             TFj = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{22,1} = strcat('+',T{4,1})
                 TTa(22,2:cc) =  T(4,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{22,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{4,1} = strcat('-',T{4,1})
                 TT(4,2:end) =  T(4,2:end)
                  
                 TTa{21,1} = strcat('-',T{4,1})
                 TTa(21,2:cc) =  T(4,2:cc)
                                  
                 TTa{22,1} = strcat('+',T{4,1})
                 TTa(22,2:cc) =  T(4,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{22,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if '#INCLUDE_BORROW fixed_point_toolbox:asset_info=98457'
         %%
         %%
         %% 
     %% Condition '#LOCKED fixed_point_blocks_nnusers_98457'
    case '#LOCKED fixed_point_blocks_nnusers_98457'
        'hi12'   
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{5,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11k = T(5,1) ; y12k = T(5,2);

        yy1k = table2array(y11k) +" "+ table2array(y12k)
                pause(1)
        if yy1k == '#LOCKED fixed_point_blocks_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{5,1} = strcat('-',T{5,1})
                 TT(5,2:end) =  T(5,2:end)
                  
                 TTa{23,1} = strcat('-',T{5,1})
                 TTa(23,2:cc) =  T(5,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp12a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp12 = str2num(char(lower(xxpp12a)));
                 
                   for mt = 1:xxpp12                    
                         xx12 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx12a = char(lower(xx12)) 
                        xx12a = string(xx12)
                         ss1k = cell2mat(xx12a)
                         ss2k = strsplit(ss1k,",")
                         ss3k = cell2table(ss2k)
                         newStrrk =  erase(table2array(T(:,3:end)),table2array(ss3k))
                         T(:,3:end) =   (newStrrk)
                         break
                    end % for
                         TFk = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx012 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx12aa = str2num(char(lower(xx012)));
                
                           xxa12 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx12a = char(lower(xxa12)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1k = cell2mat(string(xx12a))
                                ssa2k = strsplit(ssa1k,",")
                                 ssa3k = string(ssa2k)
                                 
                                 ssssk = size(ssa2k,2) 
                                 i1= 5 ; [row11,col11] = find(TF(5,:)==1)
                                 
                                phh11 =[];
                                for uy11= 1:ssssk;
                                    phh11(uy11) = [col11(uy11)];
                                end;
                                disp(phh11)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFk = ismissing(T)
                for j1k = 1:ssssk
                    for ph1k = phh11    
                              disp(ph1k)                 %          
                         if TFk(5,ph1k) ==1  
                             disp(ssa3k(j1k))
                             T(5,ph1k) = array2table( cellstr(ssa3k(j1k)))
                             TFk = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{24,1} = strcat('+',T{5,1})
                 TTa(24,2:cc) =  T(5,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{24,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{5,1} = strcat('-',T{5,1})
                 TT(5,2:end) =  T(5,2:end)
                  
                 TTa{23,1} = strcat('-',T{5,1})
                 TTa(23,2:cc) =  T(5,2:cc)
                                  
                 TTa{24,1} = strcat('+',T{5,1})
                 TTa(24,2:cc) =  T(5,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{24,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if #LOCKED fixed_point_blocks_nnusers_98457'
        %%
        %%
        %%
        %% Condition #INCLUDE_BORROW Fixed-Point_Blocks:asset_info=98457'
    case '#INCLUDE_BORROW Fixed-Point_Blocks:asset_info=98457'
        'hi13'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{6,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11l = T(6,1) ; y12l = T(6,2);

        yy1l = table2array(y11l) +" "+ table2array(y12l)
                pause(1)
        if yy1l == '#INCLUDE_BORROW Fixed-Point_Blocks:asset_info=98457'

    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{6,1} = strcat('-',T{6,1})
                 TT(6,2:end) =  T(6,2:end)
                  
                 TTa{25,1} = strcat('-',T{6,1})
                 TTa(25,2:cc) =  T(6,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp13a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp13 = str2num(char(lower(xxpp13a)));
                 
                   for mt = 1:xxpp13                    
                         xx13 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx13a = char(lower(xx13)) 
                        xx13a = string(xx13)
                         ss1l = cell2mat(xx13a)
                         ss2l = strsplit(ss1l,",")
                         ss3l = cell2table(ss2l)
                         newStrrl =  erase(table2array(T(:,3:end)),table2array(ss3l))
                         T(:,3:end) =   (newStrrl)
                         break
                    end % for
                         TFl = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx013 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx13aa = str2num(char(lower(xx013)));
                
                           xxa13 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx13a = char(lower(xxa13)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1l = cell2mat(string(xx13a))
                                ssa2l = strsplit(ssa1l,",")
                                 ssa3l = string(ssa2l)
                                 
                                 ssssl = size(ssa2l,2) 
                                 i1= 6 ; [row12,col12] = find(TF(6,:)==1)
                                 
                                phh12 =[];
                                for uy12= 1:ssssl;
                                    phh12(uy12) = [col12(uy12)];
                                end;
                                disp(phh12)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFl = ismissing(T)
                for j1l = 1:ssssl
                    for ph1l = phh12    
                              disp(ph1l)                 %          
                         if TFl(6,ph1l) ==1  
                             disp(ssa3l(j1l))
                             T(6,ph1l) = array2table( cellstr(ssa3l(j1l)))
                             TFl = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{26,1} = strcat('+',T{6,1})
                 TTa(26,2:cc) =  T(6,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{26,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{6,1} = strcat('-',T{5,1})
                 TT(6,2:end) =  T(5,2:end)
                  
                 TTa{25,1} = strcat('-',T{6,1})
                 TTa(25,2:cc) =  T(6,2:cc)
                                  
                 TTa{26,1} = strcat('+',T{6,1})
                 TTa(26,2:cc) =  T(6,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{26,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if #INCLUDE_BORROW Fixed-Point_Blocks:asset_info=98457'

        %%
        %%
        %%
     %% Condition 'Locked image_toolbox_nnusers_98457'
    case '#LOCKED image_toolbox_nnusers_98457'
        'hi14'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{7,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11m = T(7,1) ; y12m = T(7,2);

        yy1m = table2array(y11m) +" "+ table2array(y12m)
                pause(1)
        if yy1m == '#LOCKED image_toolbox_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{7,1} = strcat('-',T{7,1})
                 TT(7,2:end) =  T(7,2:end)
                  
                 TTa{27,1} = strcat('-',T{7,1})
                 TTa(27,2:cc) =  T(7,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp14a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp14 = str2num(char(lower(xxpp14a)));
                 
                   for mt = 1:xxpp14                    
                         xx14 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx14a = char(lower(xx14)) 
                        xx14a = string(xx14)
                         ss1m = cell2mat(xx14a)
                         ss2m = strsplit(ss1m,",")
                         ss3m = cell2table(ss2m)
                         newStrrm =  erase(table2array(T(:,3:end)),table2array(ss3m))
                         T(:,3:end) =   (newStrrm)
                         break
                    end % for
                         TFm = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx014 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx14aa = str2num(char(lower(xx014)));
                
                           xxa14 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx14a = char(lower(xxa14)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1m = cell2mat(string(xx14a))
                                ssa2m = strsplit(ssa1m,",")
                                 ssa3m = string(ssa2m)
                                 
                                 ssssm = size(ssa2m,2) 
                                 i1= 7 ; [row13,col13] = find(TF(7,:)==1)
                                 
                                phh13 =[];
                                for uy13= 1:ssssm;
                                    phh13(uy13) = [col13(uy13)];
                                end;
                                disp(phh13)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFm = ismissing(T)
                for j1m = 1:ssssm
                    for ph1m = phh13    
                              disp(ph1m)                 %          
                         if TFm(7,ph1m) ==1  
                             disp(ssa3m(j1m))
                             T(7,ph1m) = array2table( cellstr(ssa3m(j1m)))
                             TFm = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{28,1} = strcat('+',T{7,1})
                 TTa(28,2:cc) =  T(7,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{28,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{7,1} = strcat('-',T{7,1})
                 TT(7,2:end) =  T(7,2:end)
                  
                 TTa{27,1} = strcat('-',T{7,1})
                 TTa(27,2:cc) =  T(7,2:cc)
                                  
                 TTa{28,1} = strcat('+',T{7,1})
                 TTa(28,2:cc) =  T(7,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{28,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if #LOCKED image_toolbox_nnusers_98457 

        %%
        %%
        %% 
    %% Condition 'INCLUDE_BORROW Image_Toolbox:asset_info-98457'
    case '#INCLUDE_BORROW Image_Toolbox:asset_info=98457'
        'hi15'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{8,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11n = T(8,1) ; y12n = T(8,2);

        yy1n = table2array(y11n) +" "+ table2array(y12n)
                pause(1)
        if yy1n == '#INCLUDE_BORROW Image_Toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{8,1} = strcat('-',T{8,1})
                 TT(8,2:end) =  T(8,2:end)
                  
                 TTa{29,1} = strcat('-',T{8,1})
                 TTa(29,2:cc) =  T(8,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp15a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp15 = str2num(char(lower(xxpp15a)));
                 
                   for mt = 1:xxpp15                    
                         xx15 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx15a = char(lower(xx15)) 
                        xx15a = string(xx15)
                         ss1n = cell2mat(xx15a)
                         ss2n = strsplit(ss1n,",")
                         ss3n = cell2table(ss2n)
                         newStrrn =  erase(table2array(T(:,3:end)),table2array(ss3n))
                         T(:,3:end) =   (newStrrn)
                         break
                    end % for
                         TFn = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx015 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx15aa = str2num(char(lower(xx015)));
                
                           xxa15 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx15a = char(lower(xxa15)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1n = cell2mat(string(xx15a))
                                ssa2n = strsplit(ssa1n,",")
                                 ssa3n = string(ssa2n)
                                 
                                 ssssn = size(ssa2n,2) 
                                 i1= 8 ; [row14,col14] = find(TF(8,:)==1)
                                 
                                phh14 =[];
                                for uy14= 1:ssssm;
                                    phh14(uy14) = [col14(uy14)];
                                end;
                                disp(phh14)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFn = ismissing(T)
                for j1n = 1:ssssn
                    for ph1n = phh14    
                              disp(ph1n)                 %          
                         if TFm(8,ph1n) ==1  
                             disp(ssa3n(j1n))
                             T(8,ph1n) = array2table( cellstr(ssa3n(j1n)))
                             TFn = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{30,1} = strcat('+',T{8,1})
                 TTa(30,2:cc) =  T(8,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{30,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{8,1} = strcat('-',T{8,1})
                 TT(8,2:end) =  T(8,2:end)
                  
                 TTa{29,1} = strcat('-',T{8,1})
                 TTa(29,2:cc) =  T(8,2:cc)
                                  
                 TTa{30,1} = strcat('+',T{8,1})
                 TTa(30,2:cc) =  T(8,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{30,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  %  '#INCLUDE_BORROW Image_Toolbox:asset_info=98457'
        %%
        %%
        %% 
     %% Condition '#LOCKED matlab_nnusers_860237'
    case '#LOCKED matlab_nnusers_860237'
        set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{9,:}))
        y11 = T(9,1) ; y12 = T(9,2);

        yy1 = table2array(y11) +" "+ table2array(y12)
        
        pause(1)
        if yy1 == '#LOCKED matlab_nnusers_860237'
%     aaq = char(get(handles.edit4,'String'))
%         aaq
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                 TT{1,1} = strcat('-',T{1,1})
                 TT(1,2:end) =  T(9,2:end)
                  
                  TTa{1,1} = strcat('-',T{9,1})
                 TTa(1,2:cc) =  T(9,2:cc)
                 
                 xxpp1 = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 40]);
                 xxpp = str2num(char(lower(xxpp1)));
                 
                 for mt = 1:xxpp
                     
                 xx = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [1.5 30]);    
                 xx1 = char(lower(xx)) 
                 xx1a = string(xx1)
                 ss1 = cell2mat(xx1a)
                 ss2 = strsplit(ss1,",")
                 ss3 = cell2table(ss2)
                 newStr =  erase(table2array(T(:,3:end)),table2array(ss3))
                 T(:,3:end) =   (newStr) %%%%%
                 break
                 %newStr = (erase(table2array(T(:,3:end)),xx1))
                 %T(:,3:end) =   (newStr)
                 end % for
                 save Ta
                 T1 = T;
                 pause(0.5)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
 TF = ismissing(T)
            xx0 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2 40]);    
                             xx10 = str2num(char(lower(xx0)));
                
                           xxa = inputdlg({'Enter the User TID '},...
                              'Customer', [1.5 30]);    
                                 xx1a = char(lower(xxa)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1 = cell2mat(string(xx1a))
                                ssa2 = strsplit(ssa1,",")
                                 ssa3 = string(ssa2)
                                 
                                 ssss = size(ssa2,2) 
                          i1= 1 ; [row,col] = find(TF(1,:)==1)                         
                phh =[];
                for uy= 1:ssss;
                    phh(uy) = [col(uy)];
                end;
                disp(phh)

                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFa = ismissing(T)
                for j1 = 1:ssss         
                                                 ssss = size(ssa2,2)         

                for ph1 = phh    
                              disp(ph1) 
                %           
                if TFa(1,ph1) ==1  
                          disp(ssa3(j1))
                           T(9,ph1) = array2table( cellstr(ssa3(j1)))
                           TFa = ismissing(T)
                           break
                end
                %              T{1,4} = ({ssa3(j1)})
                            save SA1
                %           end                  
                      end
                end
                                     T1 = T;

                                 TTa{2,1} = strcat('+',T{9,1})
                                 TTa(2,2:cc) =  T(9,2:cc)

                                TTa = string(table2array(TTa))
                                TTa = array2table(TTa)
                                save Ta1

                
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{2,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0)   
               %% gg = find(strcmp(xx1,table2array(T(1,3:end))))
               %%  newStr = regexprep(str,expression,replace)

                case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 T1 = T;
                 TTa{1,1} = strcat('-',T{9,1})
                 TTa(1,2:cc) =  T(9,2:cc)
                 TTa{2,1} = strcat('+',T{9,1})
                 TTa(2,2:cc) =  T(9,2:cc)
                 set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{2,:}))
                writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
                writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0)   

            end % switch
            
            % % % % '#LOCKED matlab_nnusers_860237 -- END
         
         
                
        end % if '#LOCKED matlab_nnusers_860237'
        %%
        %%
        %%
%%   Condition 2   '#LOCKED matlab_nnusers_98457'
          case '#LOCKED matlab_nnusers_98457'
      
        set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{10,:}))
        set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11a = T(10,1) ; y12a = T(10,2);

        yy1a = table2array(y11a) +" "+ table2array(y12a)
                pause(1)
        if yy1a == '#LOCKED matlab_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{2,1} = strcat('-',T{10,1})
                 TT(2,2:end) =  T(10,2:end)
                  
                 TTa{3,1} = strcat('-',T{10,1})
                 TTa(3,2:cc) =  T(10,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp2a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp2 = str2num(char(lower(xxpp2a)));
                 
           for mt = 1:xxpp2                    
                 xx2 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx2a = char(lower(xx2)) 
                 xx2a = string(xx2)
                 ss1a = cell2mat(xx2a)
                 ss2a = strsplit(ss1a,",")
                 ss3a = cell2table(ss2a)
                 newStrra =  erase(table2array(T(:,3:end)),table2array(ss3a))
                 T(:,3:end) =   (newStrra)
                 break
            end % for
                 TFa = ismissing(T)
                 save Taa
                 pause(0.5)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx02 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx2aa = str2num(char(lower(xx02)));
                
                           xxa2 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx2a = char(lower(xxa2)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1a = cell2mat(string(xx2a))
                                ssa2a = strsplit(ssa1a,",")
                                 ssa3a = string(ssa2a)
                                 
                                 ssssa = size(ssa2a,2) 
                                 i1= 2 ; [row1,col1] = find(TFa(10,:)==1)
                                 
                                phh1 =[];
                                for uy1= 1:ssssa;
                                    phh1(uy1) = [col1(uy1)];
                                end;
                                disp(phh1)
                %        for js = 3:(3+ssss)
                 TFa = ismissing(T)
                for j1a = 1:ssssa
                    for ph1a = phh1    
                              disp(ph1a)                 %          
                         if TFa(10,ph1a) ==1  
                             disp(ssa3a(j1a))
                             T(10,ph1a) = array2table( cellstr(ssa3a(j1a)))
                             TFa = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{4,1} = strcat('+',T{10,1})
                 TTa(4,2:cc) =  T(10,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1a                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{4,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

                case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                    TT{2,1} = strcat('-',T{10,1})
                 TT(2,2:end) =  T(10,2:end)
                  
                 TTa{3,1} = strcat('-',T{10,1})
                 TTa(3,2:cc) =  T(10,2:cc)
                 TTa{4,1} = strcat('+',T{10,1})
                 TTa(4,2:cc) =  T(10,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{4,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch                 
                         
        end % if '#LOCKED matlab_nnusers_98457'
        
         % % % % '#LOCKED matlab_nnusers_98457 -- END
 %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% 
%%
%%
 %%       Condition 3 INCLUDE_BORROW MATLAB:asset_info=98457
         % do something
    case '#INCLUDE_BORROW MATLAB:asset_info=98457'
        'hi3'
        set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{11,:}))
        set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11b = T(11,1) ; y12b = T(11,2);

        yy1b = table2array(y11b) +" "+ table2array(y12b)
                pause(1)
        if yy1b == '#INCLUDE_BORROW MATLAB:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{3,1} = strcat('-',T{11,1})
                 TT(3,2:end) =  T(11,2:end)
                  
                 TTa{5,1} = strcat('-',T{11,1})
                 TTa(5,2:cc) =  T(11,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp3a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp3 = str2num(char(lower(xxpp3a)));
                 
           for mt = 1:xxpp3                    
                 xx3 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx3a = char(lower(xx3)) 
                 xx3a = string(xx3)
                 ss1b = cell2mat(xx3b)
                 ss2b = strsplit(ss1b,",")
                 ss3b = cell2table(ss2b)
                 newStrrb =  erase(table2array(T(:,3:end)),table2array(ss3b))
                 T(:,3:end) =   (newStrrb)
                 break
            end % for
                 TFb = ismissing(T)
                 save Taa
                 pause(0.5)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx03 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx3aa = str2num(char(lower(xx03)));
                
                           xxa3 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx3a = char(lower(xxa3)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1b = cell2mat(string(xx3a))
                                ssa2b = strsplit(ssa1b,",")
                                 ssa3b = string(ssa2b)
                                 
                                 ssssb = size(ssa2b,2) 
                                 i1= 11 ; [row2,col2] = find(TF(11,:)==1)
                                 
                                phh2 =[];
                                for uy2= 1:ssssb;
                                    phh2(uy2) = [col2(uy2)];
                                end;
                                disp(phh2)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFb = ismissing(T)
                for j1b = 1:ssssb
                    for ph1b = phh2    
                              disp(ph1b)                 %          
                         if TFb(2,ph1b) ==1  
                             disp(ssa3b(j1b))
                             T(11,ph1b) = array2table( cellstr(ssa3b(j1b)))
                             TFb = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{6,1} = strcat('+',T{11,1})
                 TTa(6,2:cc) =  T(11,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{6,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{3,1} = strcat('-',T{11,1})
                 TT(3,2:end) =  T(11,2:end)
                  
                 TTa{5,1} = strcat('-',T{11,1})
                 TTa(5,2:cc) =  T(11,2:cc)
                 TTa{6,1} = strcat('+',T{11,1})
                 TTa(6,2:cc) =  T(11,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{6,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch
            
                
                
        end % if '#INCLUDE_BORROW MATLAB:asset_info=98457'
         % do something
 %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% %% %%% %% 
   %%
   %%
   
   %% Condition "#Locked MATLAB_Coder:asset_info=98457"
       case '#LOCKED MATLAB_Coder:asset_info=98457'
        'hi16' 
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{12,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11o = T(12,1) ; y12o = T(12,2);

        yy1o = table2array(y11o) +" "+ table2array(y12o)
                pause(1)
        if yy1o == '#LOCKED MATLAB_Coder:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{12,1} = strcat('-',T{12,1})
                 TT(12,2:end) =  T(12,2:end)
                  
                 TTa{31,1} = strcat('-',T{12,1})
                 TTa(31,2:cc) =  T(12,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp16a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp16 = str2num(char(lower(xxpp16a)));
                 
                   for mt = 1:xxpp16                    
                         xx16 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx16a = char(lower(xx16)) 
                        xx16a = string(xx16)
                         ss1o = cell2mat(xx16a)
                         ss2o = strsplit(ss1o,",")
                         ss3o = cell2table(ss2o)
                         newStrro =  erase(table2array(T(:,3:end)),table2array(ss3o))
                         T(:,3:end) =   (newStrro)
                         break
                    end % for
                         TFo = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx016 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx16aa = str2num(char(lower(xx016)));
                
                           xxa16 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx16a = char(lower(xxa16)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1o = cell2mat(string(xx16a))
                                ssa2o = strsplit(ssa1o,",")
                                 ssa3o = string(ssa2o)
                                 
                                 sssso = size(ssa2o,2) 
                                 i1= 12 ; [row15,col15] = find(TF(12,:)==1)
                                 
                                phh15 =[];
                                for uy15= 1:ssssm;
                                    phh15(uy15) = [col15(uy15)];
                                end;
                                disp(phh15)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFo = ismissing(T)
                for j1o = 1:sssso
                    for ph1o = phh15    
                              disp(ph1o)                 %          
                         if TFo(12,ph1o) ==1  
                             disp(ssa3o(j1o))
                             T(12,ph1o) = array2table( cellstr(ssa3o(j1o)))
                             TFo = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{32,1} = strcat('+',T{12,1})
                 TTa(32,2:cc) =  T(12,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{30,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{12,1} = strcat('-',T{12,1})
                 TT(12,2:end) =  T(12,2:end)
                  
                 TTa{31,1} = strcat('-',T{12,1})
                 TTa(31,2:cc) =  T(12,2:cc)
                                  
                 TTa{32,1} = strcat('+',T{12,1})
                 TTa(32,2:cc) =  T(12,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{32,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  %  #LOCKED MATLAB_Coder:asset_info=98457 t4034yn
      
        %%
        %%
        %%
        %% "Condition INCLUDE_BORROW MATLAB_Coder:asset_info=98547"
    case '#INCLUDE_BORROW MATLAB_Coder:asset_info=98457'
        'hi17'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{13,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11p = T(13,1) ; y12p = T(13,2);

        yy1p = table2array(y11p) +" "+ table2array(y12p)
                pause(1)
        if yy1p == '#INCLUDE_BORROW MATLAB_Coder:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{13,1} = strcat('-',T{13,1})
                 TT(13,2:end) =  T(13,2:end)
                  
                 TTa{33,1} = strcat('-',T{13,1})
                 TTa(33,2:cc) =  T(13,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp17a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp17 = str2num(char(lower(xxpp17a)));
                 
                   for mt = 1:xxpp17                    
                         xx17 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx17a = char(lower(xx17)) 
                        xx17a = string(xx17)
                         ss1p = cell2mat(xx17a)
                         ss2p = strsplit(ss1p,",")
                         ss3p = cell2table(ss2p)
                         newStrrp =  erase(table2array(T(:,3:end)),table2array(ss3p))
                         T(:,3:end) =   (newStrrp)
                         break
                    end % for
                         TFp = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx017 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx17aa = str2num(char(lower(xx017)));
                
                           xxa17 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx17a = char(lower(xxa17)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1p = cell2mat(string(xx17a))
                                ssa2p = strsplit(ssa1p,",")
                                 ssa3p = string(ssa2p)
                                 
                                 ssssp = size(ssa2p,2) 
                                 i1= 13 ; [row16,col16] = find(TF(13,:)==1)
                                 
                                phh16 =[];
                                for uy16= 1:ssssp;
                                    phh16(uy16) = [col16(uy16)];
                                end;
                                disp(phh16)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFp = ismissing(T)
                for j1p = 1:ssssp
                    for ph1p = phh16    
                              disp(phh16)                 %          
                         if TFp(13,phh16) ==1  
                             disp(ssa3p(j1p))
                             T(13,ph1p) = array2table( cellstr(ssa3p(j1p)))
                             TFp = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{34,1} = strcat('+',T{13,1})
                 TTa(34,2:cc) =  T(13,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{34,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{13,1} = strcat('-',T{13,1})
                 TT(13,2:end) =  T(13,2:end)
                  
                 TTa{33,1} = strcat('-',T{13,1})
                 TTa(33,2:cc) =  T(13,2:cc)
                                  
                 TTa{34,1} = strcat('+',T{13,1})
                 TTa(34,2:cc) =  T(13,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{34,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #INCLUDE_BORROW MATLAB_Coder:asset_info=98457      
  %%
  %%
  %%
  %% Condition '#LOCKED optimization_toolbox_nnusers_98457'
    case '#LOCKED optimization_toolbox_nnusers_98457'
        'hi18'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{14,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11q = T(14,1) ; y12q = T(14,2);

        yy1q = table2array(y11q) +" "+ table2array(y12q)
                pause(1)
        if yy1q == '#LOCKED optimization_toolbox_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{14,1} = strcat('-',T{14,1})
                 TT(14,2:end) =  T(14,2:end)
                  
                 TTa{35,1} = strcat('-',T{14,1})
                 TTa(35,2:cc) =  T(14,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp18a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp18 = str2num(char(lower(xxpp18a)));
                 
                   for mt = 1:xxpp18                    
                         xx18 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx18a = char(lower(xx18)) 
                        xx18a = string(xx18)
                         ss1q = cell2mat(xx18a)
                         ss2q = strsplit(ss1q,",")
                         ss3q = cell2table(ss2q)
                         newStrrq =  erase(table2array(T(:,3:end)),table2array(ss3q))
                         T(:,3:end) =   (newStrrq)
                         break
                    end % for
                         TFq = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx018 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx18aa = str2num(char(lower(xx018)));
                
                           xxa18 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx18a = char(lower(xxa18)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1q = cell2mat(string(xx18a))
                                ssa2q = strsplit(ssa1q,",")
                                ssa3q = string(ssa2q)
                                 
                                 ssssq = size(ssa2q,2) 
                                 i1= 14 ; [row17,col17] = find(TF(14,:)==1)
                                 
                                phh17 =[];
                                for uy17= 1:ssssq;
                                    phh17(uy17) = [col17(uy17)];
                                end;
                                disp(phh17)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFq = ismissing(T)
                for j1q = 1:ssssq
                    for ph1q = phh17    
                              disp(phh17)                 %          
                         if TFq(14,phh17) ==1  
                             disp(ssa3q(j1q))
                             T(14,ph1q) = array2table( cellstr(ssa3q(j1q)))
                             TFq = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{36,1} = strcat('+',T{14,1})
                 TTa(36,2:cc) =  T(14,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{36,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{14,1} = strcat('-',T{14,1})
                 TT(14,2:end) =  T(14,2:end)
                  
                 TTa{35,1} = strcat('-',T{14,1})
                 TTa(35,2:cc) =  T(14,2:cc)
                                  
                 TTa{36,1} = strcat('+',T{14,1})
                 TTa(36,2:cc) =  T(14,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{36,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #LOCKED optimization_toolbox_nnusers_98457    
       %%
       %%
       %%
       %% Condition INCLUDE_BORROW Optimization_Toolbox:asset_info=98457'
    case '#INCLUDE_BORROW Optimization_Toolbox:asset_info=98457'
        'hi19'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{15,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11r = T(15,1) ; y12r = T(15,2);

        yy1r = table2array(y11r) +" "+ table2array(y12r)
                pause(1)
        if yy1r == '#INCLUDE_BORROW Optimization_Toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{15,1} = strcat('-',T{15,1})
                 TT(15,2:end) =  T(15,2:end)
                  
                 TTa{37,1} = strcat('-',T{15,1})
                 TTa(37,2:cc) =  T(15,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp19a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp19 = str2num(char(lower(xxpp19a)));
                 
                   for mt = 1:xxpp19                    
                         xx19 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx19a = char(lower(xx19)) 
                        xx19a = string(xx19)
                         ss1r = cell2mat(xx19a)
                         ss2r = strsplit(ss1r,",")
                         ss3r = cell2table(ss2r)
                         newStrrr =  erase(table2array(T(:,3:end)),table2array(ss3r))
                         T(:,3:end) =   (newStrrr)
                         break
                    end % for
                         TFr = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx019 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx19aa = str2num(char(lower(xx019)));
                
                           xxa19 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx19a = char(lower(xxa19)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1r = cell2mat(string(xx19a))
                                ssa2r = strsplit(ssa1r,",")
                                ssa3r = string(ssa2r)
                                 
                                 ssssr = size(ssa2r,2) 
                                 i1= 15 ; [row18,col18] = find(TF(15,:)==1)
                                 
                                phh18 =[];
                                for uy18= 1:ssssr;
                                    phh18(uy18) = [col18(uy18)];
                                end;
                                disp(phh18)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFr = ismissing(T)
                for j1r = 1:ssssr
                    for ph1r = phh18    
                              disp(phh18)                 %          
                         if TFr(15,phh18) ==1  
                             disp(ssa3r(j1r))
                             T(15,ph1r) = array2table( cellstr(ssa3r(j1r)))
                             TFr = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{38,1} = strcat('+',T{15,1})
                 TTa(38,2:cc) =  T(15,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{38,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{15,1} = strcat('-',T{15,1})
                 TT(15,2:end) =  T(15,2:end)
                  
                 TTa{37,1} = strcat('-',T{15,1})
                 TTa(37,2:cc) =  T(15,2:cc)
                                  
                 TTa{38,1} = strcat('+',T{15,1})
                 TTa(38,2:cc) =  T(15,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{38,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #INCLUDE_BORROW Optimization_Toolbox:asset_info=98457  
        %%
        %%
        %%
        %% Condition " #LOCKED RTW_Embedded_Coder:asset_info=98457"
    case '#LOCKED RTW_Embedded_Coder:asset_info=98457'
        'hi20'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{16,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11s = T(16,1) ; y12s = T(16,2);

        yy1s = table2array(y11s) +" "+ table2array(y12s)
                pause(1)
        if yy1s == '#LOCKED RTW_Embedded_Coder:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{16,1} = strcat('-',T{16,1})
                 TT(16,2:end) =  T(16,2:end)
                  
                 TTa{39,1} = strcat('-',T{16,1})
                 TTa(39,2:cc) =  T(16,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp20a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp20 = str2num(char(lower(xxpp20a)));
                 
                   for mt = 1:xxpp20                   
                         xx20 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx20a = char(lower(xx20)) 
                        xx20a = string(xx20)
                         ss1s = cell2mat(xx20a)
                         ss2s = strsplit(ss1s,",")
                         ss3s = cell2table(ss2r)
                         newStrrs =  erase(table2array(T(:,3:end)),table2array(ss3s))
                         T(:,3:end) =   (newStrrs)
                         break
                    end % for
                         TFs = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx020 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx20aa = str2num(char(lower(xx020)));
                
                           xxa20 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx20a = char(lower(xxa20)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1s = cell2mat(string(xx20a))
                                ssa2s = strsplit(ssa1s,",")
                                ssa3s = string(ssa2s)
                                 
                                 sssss = size(ssa2s,2) 
                                 i1= 16 ; [row19,col19] = find(TF(16,:)==1)
                                 
                                phh19 =[];
                                for uy19= 1:sssss;
                                    phh19(uy19) = [col19(uy19)];
                                end;
                                disp(phh19)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFs = ismissing(T)
                for j1s = 1:sssss
                    for ph1s = phh19    
                              disp(phh19)                 %          
                         if TFs(16,phh19) ==1  
                             disp(ssa3s(j1s))
                             T(16,ph1s) = array2table( cellstr(ssa3s(j1s)))
                             TFs = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{40,1} = strcat('+',T{16,1})
                 TTa(40,2:cc) =  T(16,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{40,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{16,1} = strcat('-',T{16,1})
                 TT(16,2:end) =  T(16,2:end)
                  
                 TTa{39,1} = strcat('-',T{16,1})
                 TTa(39,2:cc) =  T(16,2:cc)
                                  
                 TTa{40,1} = strcat('+',T{16,1})
                 TTa(40,2:cc) =  T(16,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{40,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #LOCKED RTW_Embedded_Coder:asset_info=98457
        %%
        %%
        %%
        %% Condition "INCLUDE_BORROW RTW_Embedded_Coder :asset_info=98457"
    case '#INCLUDE_BORROW RTW_Embedded_Coder:asset_info=98457'
        'hi21'  
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{17,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11t = T(17,1) ; y12t = T(17,2);

        yy1t = table2array(y11t) +" "+ table2array(y12t)
                pause(1)
        if yy1t == '#INCLUDE_BORROW RTW_Embedded_Coder:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{17,1} = strcat('-',T{17,1})
                 TT(17,2:end) =  T(17,2:end)
                  
                 TTa{41,1} = strcat('-',T{17,1})
                 TTa(41,2:cc) =  T(17,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp21a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp21 = str2num(char(lower(xxpp21a)));
                 
                   for mt = 1:xxpp21                   
                         xx21 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx21 = char(lower(xx21)) 
                        xx21a = string(xx21)
                         ss1t = cell2mat(xx21a)
                         ss2t = strsplit(ss1t,",")
                         ss3t = cell2table(ss2t)
                         newStrrt =  erase(table2array(T(:,3:end)),table2array(ss3t))
                         T(:,3:end) =   (newStrrt)
                         break
                    end % for
                         TFt = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx021 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx21aa = str2num(char(lower(xx021)));
                
                           xxa21 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx21a = char(lower(xxa21)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1t = cell2mat(string(xx21a))
                                ssa2t = strsplit(ssa1t,",")
                                ssa3t = string(ssa2t)
                                 
                                 sssst = size(ssa2t,2) 
                                 i1= 17 ; [row20,col20] = find(TF(17,:)==1)
                                 
                                phh20 =[];
                                for uy20= 1:sssst;
                                    phh20(uy20) = [col20(uy20)];
                                end;
                                disp(phh20)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFt = ismissing(T)
                for j1t = 1:sssst
                    for ph1t = phh20    
                              disp(phh20)                 %          
                         if TFt(17,phh20) ==1  
                             disp(ssa3t(j1t))
                             T(17,ph1t) = array2table( cellstr(ssa3t(j1t)))
                             TFt = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{42,1} = strcat('+',T{17,1})
                 TTa(42,2:cc) =  T(17,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{40,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{17,1} = strcat('-',T{17,1})
                 TT(17,2:end) =  T(17,2:end)
                  
                 TTa{41,1} = strcat('-',T{17,1})
                 TTa(41,2:cc) =  T(17,2:cc)
                                  
                 TTa{42,1} = strcat('+',T{17,1})
                 TTa(42,2:cc) =  T(17,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{42,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #INCLUDE_BORROW RTW_Embedded_Coder:asset_info=98457

        %%
        %%
        %%
        %% Condition #LOCKED real_time_workshop_nnusers_98457'
    case '#LOCKED real_time_workshop_nnusers_98457'
        'hi22'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{18,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11u = T(18,1) ; y12u = T(18,2);

        yy1u = table2array(y11u) +" "+ table2array(y12u)
                pause(1)
        if yy1u == '#LOCKED real_time_workshop_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{18,1} = strcat('-',T{18,1})
                 TT(18,2:end) =  T(18,2:end)
                  
                 TTa{43,1} = strcat('-',T{18,1})
                 TTa(43,2:cc) =  T(18,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp22a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp22 = str2num(char(lower(xxpp22a)));
                 
                   for mt = 1:xxpp22                   
                         xx22 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx22 = char(lower(xx22)) 
                        xx22a = string(xx22)
                         ss1u = cell2mat(xx22a)
                         ss2u = strsplit(ss1u,",")
                         ss3u = cell2table(ss2u)
                         newStrru =  erase(table2array(T(:,3:end)),table2array(ss3u))
                         T(:,3:end) =   (newStrru)
                         break
                    end % for
                         TFu = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx022 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx22aa = str2num(char(lower(xx022)));
                
                           xxa22 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx22a = char(lower(xxa22)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1u = cell2mat(string(xx22a))
                                ssa2u = strsplit(ssa1u,",")
                                ssa3u = string(ssa2u)
                                 
                                 ssssu = size(ssa2u,2) 
                                 i1= 18 ; [row21,col21] = find(TF(18,:)==1)
                                 
                                phh21 =[];
                                for uy21= 1:ssssu;
                                    phh21(uy21) = [col21(uy21)];
                                end;
                                disp(phh21)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFu = ismissing(T)
                for j1u = 1:ssssu
                    for ph1u = phh21    
                              disp(phh21)                 %          
                         if TFu(18,phh21) ==1  
                             disp(ssa3u(j1u))
                             T(18,ph1u) = array2table( cellstr(ssa3u(j1u)))
                             TFu = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{44,1} = strcat('+',T{18,1})
                 TTa(44,2:cc) =  T(18,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{44,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{18,1} = strcat('-',T{18,1})
                 TT(18,2:end) =  T(18,2:end)
                  
                 TTa{43,1} = strcat('-',T{18,1})
                 TTa(43,2:cc) =  T(18,2:cc)
                                  
                 TTa{44,1} = strcat('+',T{18,1})
                 TTa(44,2:cc) =  T(18,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{44,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % ##LOCKED real_time_workshop_nnusers_98457

        %%
        %%
        %%
        %% Condition #INCLUDE_BORROW Real-Time_Workshop:asset_info=98457'
     case '#INCLUDE_BORROW Real-Time_Workshop:asset_info=98457'
        'hi23'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{19,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11v = T(19,1) ; y12v = T(19,2);

        yy1v = table2array(y11v) +" "+ table2array(y12v)
                pause(1)
        if yy1v == '#INCLUDE_BORROW Real-Time_Workshop:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{19,1} = strcat('-',T{19,1})
                 TT(19,2:end) =  T(19,2:end)
                  
                 TTa{45,1} = strcat('-',T{19,1})
                 TTa(45,2:cc) =  T(19,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp23a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp23 = str2num(char(lower(xxpp23a)));
                 
                   for mt = 1:xxpp23                   
                         xx23 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx23 = char(lower(xx23)) 
                        xx23a = string(xx23)
                         ss1v = cell2mat(xx23a)
                         ss2v = strsplit(ss1v,",")
                         ss3v = cell2table(ss2v)
                         newStrrv =  erase(table2array(T(:,3:end)),table2array(ss3v))
                         T(:,3:end) =   (newStrrv)
                         break
                    end % for
                         TFv = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx023 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx23aa = str2num(char(lower(xx023)));
                
                           xxa23 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx23a = char(lower(xxa23)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1v = cell2mat(string(xx23a))
                                ssa2v = strsplit(ssa1v,",")
                                ssa3v = string(ssa2v)
                                 
                                 ssssv = size(ssa2v,2) 
                                 i1= 19 ; [row22,col22] = find(TF(19,:)==1)
                                 
                                phh22 =[];
                                for uy22= 1:ssssv;
                                    phh22(uy22) = [col22(uy22)];
                                end;
                                disp(phh22)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFv = ismissing(T)
                for j1v = 1:ssssv
                    for ph1v = phh22    
                              disp(phh22)                 %          
                         if TFv(19,phh22) ==1  
                             disp(ssa3v(j1v))
                             T(19,ph1v) = array2table( cellstr(ssa3v(j1v)))
                             TFv = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{46,1} = strcat('+',T{19,1})
                 TTa(46,2:cc) =  T(19,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{46,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{19,1} = strcat('-',T{19,1})
                 TT(19,2:end) =  T(19,2:end)
                  
                 TTa{45,1} = strcat('-',T{19,1})
                 TTa(45,2:cc) =  T(19,2:cc)
                                  
                 TTa{46,1} = strcat('+',T{19,1})
                 TTa(46,2:cc) =  T(19,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{46,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #INCLUDE_BORROW Real-Time_Workshop:asset_info=98457 dummyuser
        %%
        %%
        %%
        %% Condition #LOCKED statistics_toolbox_nnusers_98457'
    case '#LOCKED statistics_toolbox_nnusers_98457'
        'hi24' 
         
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{20,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11w = T(20,1) ; y12w = T(20,2);

        yy1w = table2array(y11w) +" "+ table2array(y12w)
                pause(1)
        if yy1w == '#LOCKED statistics_toolbox_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{20,1} = strcat('-',T{20,1})
                 TT(20,2:end) =  T(20,2:end)
                  
                 TTa{47,1} = strcat('-',T{20,1})
                 TTa(47,2:cc) =  T(20,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp24a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp24 = str2num(char(lower(xxpp24a)));
                 
                   for mt = 1:xxpp24                   
                         xx24 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx24 = char(lower(xx24)) 
                        xx24a = string(xx24)
                         ss1w = cell2mat(xx24a)
                         ss2w = strsplit(ss1w,",")
                         ss3w = cell2table(ss2w)
                         newStrrw =  erase(table2array(T(:,3:end)),table2array(ss3w))
                         T(:,3:end) =   (newStrrw)
                         break
                    end % for
                         TFw = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx024 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx24aa = str2num(char(lower(xx024)));
                
                           xxa24 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx24a = char(lower(xxa24)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1w = cell2mat(string(xx24a))
                                ssa2w = strsplit(ssa1w,",")
                                ssa3w = string(ssa2w)
                                 
                                 ssssw = size(ssa2w,2) 
                                 i1= 20 ; [row23,col23] = find(TF(20,:)==1)
                                 
                                phh23 =[];
                                for uy23= 1:ssssw;
                                    phh23(uy23) = [col23(uy23)];
                                end;
                                disp(phh23)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFw = ismissing(T)
                for j1w = 1:ssssw
                    for ph1w = phh23    
                              disp(phh23)                 %          
                         if TFw(20,phh23) ==1  
                             disp(ssa3w(j1w))
                             T(20,ph1w) = array2table( cellstr(ssa3w(j1w)))
                             TFw = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{48,1} = strcat('+',T{20,1})
                 TTa(48,2:cc) =  T(20,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{48,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{20,1} = strcat('-',T{20,1})
                 TT(20,2:end) =  T(20,2:end)
                  
                 TTa{47,1} = strcat('-',T{20,1})
                 TTa(47,2:cc) =  T(20,2:cc)
                                  
                 TTa{48,1} = strcat('+',T{20,1})
                 TTa(48,2:cc) =  T(20,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{48,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if  % #LOCKED statistics_toolbox_nnusers_98457
        %%
        %%
        %%
        %% Condition #INCLUDE_BORROW Statistics_Toolbox:asset_info=98457'
    case '#INCLUDE_BORROW Statistics_Toolbox:asset_info=98457'
        'hi25'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{21,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11wa = T(21,1) ; y12wa = T(21,2);

        yy1wa = table2array(y11wa) +" "+ table2array(y12wa)
                pause(1)
        if yy1wa == '#INCLUDE_BORROW Statistics_Toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{21,1} = strcat('-',T{21,1})
                 TT(21,2:end) =  T(21,2:end)
                  
                 TTa{49,1} = strcat('-',T{21,1})
                 TTa(49,2:cc) =  T(21,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp24a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp24 = str2num(char(lower(xxpp24a)));
                 
                   for mt = 1:xxpp24                   
                         xx24 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx24 = char(lower(xx24)) 
                        xx24a = string(xx24)
                         ss1wa = cell2mat(xx24a)
                         ss2wa = strsplit(ss1wa,",")
                         ss3wa = cell2table(ss2wa)
                         newStrrwa =  erase(table2array(T(:,3:end)),table2array(ss3wa))
                         T(:,3:end) =   (newStrrwa)
                         break
                    end % for
                         TFwa = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx024 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx24aa = str2num(char(lower(xx024)));
                
                           xxa24 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx24a = char(lower(xxa24)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1wa = cell2mat(string(xx24a))
                                ssa2wa = strsplit(ssa1wa,",")
                                ssa3wa = string(ssa2wa)
                                 
                                 sssswa = size(ssa2wa,2) 
                                 i1= 21 ; [row23,col23] = find(TF(21,:)==1)
                                 
                                phh23 =[];
                                for uy23= 1:sssswa;
                                    phh23(uy23) = [col23(uy23)];
                                end;
                                disp(phh23)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFwa = ismissing(T)
                for j1wa = 1:sssswa
                    for ph1wa = phh23    
                              disp(phh23)                 %          
                         if TFwa(21,phh23) ==1  
                             disp(ssa3wa(j1wa))
                             T(21,ph1wa) = array2table( cellstr(ssa3wa(j1wa)))
                             TFwa = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{50,1} = strcat('+',T{21,1})
                 TTa(50,2:cc) =  T(21,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{50,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{21,1} = strcat('-',T{21,1})
                 TT(21,2:end) =  T(21,2:end)
                  
                 TTa{49,1} = strcat('-',T{21,1})
                 TTa(49,2:cc) =  T(21,2:cc)
                                  
                 TTa{50,1} = strcat('+',T{21,1})
                 TTa(50,2:cc) =  T(21,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{50,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #INCLUDE_BORROW Statistics_Toolbox:asset_info=98457
        %%
        %%
        %%
        %% Condition '#LOCKED simscape_nnusers_98457'
    case '#LOCKED simscape_nnusers_98457'
        'hi25'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{22,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11x = T(22,1) ; y12x = T(22,2);

        yy1x = table2array(y11x) +" "+ table2array(y12x)
                pause(1)
        if yy1x == '#LOCKED simscape_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{22,1} = strcat('-',T{22,1})
                 TT(22,2:end) =  T(22,2:end)
                  
                 TTa{51,1} = strcat('-',T{22,1})
                 TTa(51,2:cc) =  T(22,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp25a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp25 = str2num(char(lower(xxpp25a)));
                 
                   for mt = 1:xxpp25                   
                         xx25 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx25 = char(lower(xx25)) 
                        xx25a = string(xx25)
                         ss1x = cell2mat(xx25a)
                         ss2x = strsplit(ss1x,",")
                         ss3x = cell2table(ss2x)
                         newStrrx =  erase(table2array(T(:,3:end)),table2array(ss3x))
                         T(:,3:end) =   (newStrrx)
                         break
                    end % for
                         TFx = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx025 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx25aa = str2num(char(lower(xx025)));
                
                           xxa25 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx25a = char(lower(xxa25)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1x = cell2mat(string(xx25a))
                                ssa2x = strsplit(ssa1x,",")
                                ssa3x = string(ssa2x)
                                 
                                 ssssx = size(ssa2x,2) 
                                 i1= 22 ; [row24,col24] = find(TF(22,:)==1)
                                 
                                phh24 =[];
                                for uy24= 1:ssssx;
                                    phh24(uy24) = [col24(uy24)];
                                end;
                                disp(phh24)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFx = ismissing(T)
                for j1x = 1:ssssx
                    for ph1x = phh24    
                              disp(phh24)                 %          
                         if TFx(22,phh24) ==1  
                             disp(ssa3x(j1x))
                             T(22,ph1x) = array2table( cellstr(ssa3x(j1x)))
                             TFx = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{52,1} = strcat('+',T{22,1})
                 TTa(52,2:cc) =  T(22,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{52,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{22,1} = strcat('-',T{22,1})
                 TT(22,2:end) =  T(22,2:end)
                  
                 TTa{51,1} = strcat('-',T{22,1})
                 TTa(51,2:cc) =  T(22,2:cc)
                                  
                 TTa{52,1} = strcat('+',T{22,1})
                 TTa(52,2:cc) =  T(22,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{52,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED simscape_nnusers_98457
        %%
        %%
        %%
        %% Condition #INCLUDE_BORROW Simscape:asset_info=98457'
    case '#INCLUDE_BORROW Simscape:asset_info=98457'
        'hi26'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{23,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11y = T(23,1) ; y12y = T(23,2);

        yy1y = table2array(y11y) +" "+ table2array(y12y)
                pause(1)
        if yy1y == '#INCLUDE_BORROW Simscape:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{23,1} = strcat('-',T{23,1})
                 TT(23,2:end) =  T(23,2:end)
                  
                 TTa{53,1} = strcat('-',T{23,1})
                 TTa(53,2:cc) =  T(23,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp26a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp26 = str2num(char(lower(xxpp26a)));
                 
                   for mt = 1:xxpp26                   
                         xx26 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx26 = char(lower(xx26)) 
                        xx26a = string(xx26)
                         ss1y = cell2mat(xx26a)
                         ss2y = strsplit(ss1y,",")
                         ss3y = cell2table(ss2y)
                         newStrry =  erase(table2array(T(:,3:end)),table2array(ss3y))
                         T(:,3:end) =   (newStrry)
                         break
                    end % for
                         TFy = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx026 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx26aa = str2num(char(lower(xx026)));
                
                           xxa26 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx26a = char(lower(xxa26)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1y = cell2mat(string(xx26a))
                                ssa2y = strsplit(ssa1y,",")
                                ssa3y = string(ssa2y)
                                 
                                 ssssy = size(ssa2y,2) 
                                 i1= 23 ; [row25,col25] = find(TF(23,:)==1)
                                 
                                phh25 =[];
                                for uy25= 1:ssssy;
                                    phh25(uy25) = [col25(uy25)];
                                end;
                                disp(phh25)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFy = ismissing(T)
                for j1y = 1:ssssy
                    for ph1y = phh25    
                              disp(phh25)                 %          
                         if TFy(23,phh25) ==1  
                             disp(ssa3y(j1y))
                             T(23,ph1y) = array2table( cellstr(ssa3y(j1y)))
                             TFy = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{54,1} = strcat('+',T{23,1})
                 TTa(54,2:cc) =  T(23,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{54,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{23,1} = strcat('-',T{23,1})
                 TT(23,2:end) =  T(23,2:end)
                  
                 TTa{53,1} = strcat('-',T{23,1})
                 TTa(53,2:cc) =  T(23,2:cc)
                                  
                 TTa{54,1} = strcat('+',T{23,1})
                 TTa(54,2:cc) =  T(23,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{54,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #INCLUDE_BORROW Simscape:asset_info=98457 
        %%
        %%
        %%
        %% Condition  '#LOCKED signal_toolbox_nnusers_98457'
    case '#LOCKED signal_toolbox_nnusers_98457'
        'hi27'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{24,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z = T(24,1) ; y12z = T(24,2);

        yy1z = table2array(y11z) +" "+ table2array(y12z)
                pause(1)
        if yy1z == '#LOCKED signal_toolbox_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{24,1} = strcat('-',T{24,1})
                 TT(24,2:end) =  T(24,2:end)
                  
                 TTa{55,1} = strcat('-',T{24,1})
                 TTa(55,2:cc) =  T(24,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp27a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp27 = str2num(char(lower(xxpp27a)));
                 
                   for mt = 1:xxpp27                   
                         xx27 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx27 = char(lower(xx27)) 
                        xx27a = string(xx27)
                         ss1z = cell2mat(xx27a)
                         ss2z = strsplit(ss1z,",")
                         ss3z = cell2table(ss2z)
                         newStrrz =  erase(table2array(T(:,3:end)),table2array(ss3z))
                         T(:,3:end) =   (newStrrz)
                         break
                    end % for
                         TFz = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx027 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx27aa = str2num(char(lower(xx027)));
                
                           xxa27 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx27a = char(lower(xxa27)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z = cell2mat(string(xx27a))
                                ssa2z = strsplit(ssa1z,",")
                                ssa3z = string(ssa2z)
                                 
                                 ssssz = size(ssa2z,2) 
                                 i1= 24 ; [row26,col26] = find(TF(24,:)==1)
                                 
                                phh26 =[];
                                for uy26= 1:ssssz;
                                    phh26(uy26) = [col26(uy26)];
                                end;
                                disp(phh26)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz = ismissing(T)
                for j1z = 1:ssssz
                    for ph1z = phh26    
                              disp(phh26)                 %          
                         if TFz(24,phh26) ==1  
                             disp(ssa3z(j1z))
                             T(24,ph1z) = array2table( cellstr(ssa3z(j1z)))
                             TFz = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{56,1} = strcat('+',T{24,1})
                 TTa(56,2:cc) =  T(24,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{56,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{24,1} = strcat('-',T{24,1})
                 TT(24,2:end) =  T(24,2:end)
                  
                 TTa{55,1} = strcat('-',T{24,1})
                 TTa(55,2:cc) =  T(24,2:cc)
                                  
                 TTa{56,1} = strcat('+',T{24,1})
                 TTa(56,2:cc) =  T(24,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{56,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED signal_toolbox_nnusers_98457 
        %%
        %%
        %%
        %% Condition '#INCLUDE_BORROW Signal_Toolbox:asset_info=98457'
    case '#INCLUDE_BORROW Signal_Toolbox:asset_info=98457'
        'hi28' 
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{25,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z1 = T(25,1) ; y12z1 = T(25,2);

        yy1z1 = table2array(y11z1) +" "+ table2array(y12z1)
                pause(1)
        if yy1z1 == '#INCLUDE_BORROW Signal_Toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{25,1} = strcat('-',T{25,1})
                 TT(25,2:end) =  T(25,2:end)
                  
                 TTa{57,1} = strcat('-',T{25,1})
                 TTa(57,2:cc) =  T(25,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp28a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp28 = str2num(char(lower(xxpp28a)));
                 
                   for mt = 1:xxpp28                   
                         xx28 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx28 = char(lower(xx28)) 
                        xx28a = string(xx28)
                         ss1z1 = cell2mat(xx28a)
                         ss2z1 = strsplit(ss1z1,",")
                         ss3z1 = cell2table(ss2z1)
                         newStrrz1 =  erase(table2array(T(:,3:end)),table2array(ss3z1))
                         T(:,3:end) =   (newStrrz1)
                         break
                    end % for
                         TFz1 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx028 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx28aa = str2num(char(lower(xx028)));
                
                           xxa28 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx28a = char(lower(xxa28)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z1 = cell2mat(string(xx28a))
                                ssa2z1 = strsplit(ssa1z1,",")
                                ssa3z1 = string(ssa2z1)
                                 
                                 ssssz1 = size(ssa2z1,2) 
                                 i1= 25 ; [row27,col27] = find(TF(25,:)==1)
                                 
                                phh27 =[];
                                for uy27= 1:ssssz1;
                                    phh27(uy27) = [col27(uy27)];
                                end;
                                disp(phh27)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz1 = ismissing(T)
                for j1z1 = 1:ssssz1
                    for ph1z1 = phh27    
                              disp(phh27)                 %          
                         if TFz1(25,phh27) ==1  
                             disp(ssa3z1(j1z1))
                             T(25,ph1z1) = array2table( cellstr(ssa3z1(j1z1)))
                             TFz1 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{58,1} = strcat('+',T{25,1})
                 TTa(58,2:cc) =  T(25,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{58,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{25,1} = strcat('-',T{25,1})
                 TT(25,2:end) =  T(25,2:end)
                  
                 TTa{57,1} = strcat('-',T{25,1})
                 TTa(57,2:cc) =  T(25,2:cc)
                                  
                 TTa{58,1} = strcat('+',T{25,1})
                 TTa(58,2:cc) =  T(25,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{58,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#INCLUDE_BORROW Signal_Toolbox:asset_info=98457
        %%
        %%
        %%
        %% Condition '#LOCKED signal_blocks_nnusers_98457'
    case '#LOCKED signal_blocks_nnusers_98457'
        'hi29'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{26,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z2 = T(26,1) ; y12z2 = T(26,2);

        yy1z2 = table2array(y11z2) +" "+ table2array(y12z2)
                pause(1)
        if yy1z2 == '#LOCKED signal_blocks_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{26,1} = strcat('-',T{26,1})
                 TT(26,2:end) =  T(26,2:end)
                  
                 TTa{59,1} = strcat('-',T{26,1})
                 TTa(59,2:cc) =  T(26,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp29a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp29 = str2num(char(lower(xxpp29a)));
                 
                   for mt = 1:xxpp29                   
                         xx29 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx29 = char(lower(xx29)) 
                        xx29a = string(xx29)
                         ss1z2 = cell2mat(xx29a)
                         ss2z2 = strsplit(ss1z2,",")
                         ss3z2 = cell2table(ss2z2)
                         newStrrz2 =  erase(table2array(T(:,3:end)),table2array(ss3z2))
                         T(:,3:end) =   (newStrrz2)
                         break
                    end % for
                         TFz2 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx029 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx29aa = str2num(char(lower(xx029)));
                
                           xxa29 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx29a = char(lower(xxa29)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z2 = cell2mat(string(xx29a))
                                ssa2z2 = strsplit(ssa1z2,",")
                                ssa3z2 = string(ssa2z2)
                                 
                                 ssssz2 = size(ssa2z2,2) 
                                 i1= 26 ; [row28,col28] = find(TF(26,:)==1)
                                 
                                phh28 =[];
                                for uy28= 1:ssssz2;
                                    phh28(uy28) = [col28(uy28)];
                                end;
                                disp(phh28)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz2 = ismissing(T)
                for j1z2 = 1:ssssz2
                    for ph1z2 = phh28    
                              disp(phh28)                 %          
                         if TFz2(26,phh28) ==1  
                             disp(ssa3z2(j1z2))
                             T(26,ph1z2) = array2table( cellstr(ssa3z2(j1z2)))
                             TFz2 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{60,1} = strcat('+',T{26,1})
                 TTa(60,2:cc) =  T(26,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{60,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{26,1} = strcat('-',T{26,1})
                 TT(26,2:end) =  T(26,2:end)
                  
                 TTa{59,1} = strcat('-',T{26,1})
                 TTa(59,2:cc) =  T(26,2:cc)
                                  
                 TTa{60,1} = strcat('+',T{26,1})
                 TTa(60,2:cc) =  T(26,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{60,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED signal_blocks_nnusers_98457
        %%
        %%
        %%
        %% Condition '#INCLUDE_BORROW Signal_Blocks:asset_info=98457'
     case '#INCLUDE_BORROW Signal_Blocks:asset_info=98457'
        'hi30'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{27,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z3 = T(27,1) ; y12z3 = T(27,2);

        yy1z3 = table2array(y11z3) +" "+ table2array(y12z3)
                pause(1)
        if yy1z3 == '#INCLUDE_BORROW Signal_Blocks:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{27,1} = strcat('-',T{27,1})
                 TT(27,2:end) =  T(27,2:end)
                  
                 TTa{61,1} = strcat('-',T{27,1})
                 TTa(61,2:cc) =  T(27,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp30a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp30 = str2num(char(lower(xxpp30a)));
                 
                   for mt = 1:xxpp30                   
                         xx30 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx30 = char(lower(xx30)) 
                        xx30a = string(xx30)
                         ss1z3 = cell2mat(xx30a)
                         ss2z3 = strsplit(ss1z3,",")
                         ss3z3 = cell2table(ss2z3)
                         newStrrz3 =  erase(table2array(T(:,3:end)),table2array(ss3z3))
                         T(:,3:end) =   (newStrrz3)
                         break
                    end % for
                         TFz3 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx030 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx30aa = str2num(char(lower(xx030)));
                
                           xxa30 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx30a = char(lower(xxa30)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z3 = cell2mat(string(xx30a))
                                ssa2z3 = strsplit(ssa1z3,",")
                                ssa3z3 = string(ssa2z3)
                                 
                                 ssssz3 = size(ssa2z3,2) 
                                 i1= 27 ; [row29,col29] = find(TF(27,:)==1)
                                 
                                phh29 =[];
                                for uy29= 1:ssssz3;
                                    phh29(uy29) = [col29(uy29)];
                                end;
                                disp(phh29)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz3 = ismissing(T)
                for j1z3 = 1:ssssz3
                    for ph1z3 = phh29    
                              disp(phh29)                 %          
                         if TFz3(27,phh29) ==1  
                             disp(ssa3z3(j1z3))
                             T(27,ph1z3) = array2table( cellstr(ssa3z3(j1z3)))
                             TFz3 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{62,1} = strcat('+',T{27,1})
                 TTa(62,2:cc) =  T(27,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{62,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{27,1} = strcat('-',T{27,1})
                 TT(27,2:end) =  T(27,2:end)
                  
                 TTa{61,1} = strcat('-',T{27,1})
                 TTa(61,2:cc) =  T(27,2:cc)
                                  
                 TTa{62,1} = strcat('+',T{27,1})
                 TTa(62,2:cc) =  T(27,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{62,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#INCLUDE_BORROW Signal_Blocks:asset_info=98457 
        %%
        %%
        %%
        %% Condition '#LOCKED signal_blocks_nnusers_98457_R2020a'
    case '#LOCKED signal_blocks_nnusers_98457_R2020a'
        'hi31' 
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{28,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z4 = T(28,1) ; y12z4 = T(28,2);

        yy1z4 = table2array(y11z4) +" "+ table2array(y12z4)
                pause(1)
        if yy1z4 == '#LOCKED signal_blocks_nnusers_98457_R2020a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{28,1} = strcat('-',T{28,1})
                 TT(28,2:end) =  T(28,2:end)
                  
                 TTa{63,1} = strcat('-',T{28,1})
                 TTa(63,2:cc) =  T(28,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp31a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp31 = str2num(char(lower(xxpp31a)));
                 
                   for mt = 1:xxpp31                   
                         xx31 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx31 = char(lower(xx31)) 
                        xx31a = string(xx31)
                         ss1z4 = cell2mat(xx31a)
                         ss2z4 = strsplit(ss1z4,",")
                         ss3z4 = cell2table(ss2z4)
                         newStrrz4 =  erase(table2array(T(:,3:end)),table2array(ss3z4))
                         T(:,3:end) =   (newStrrz4)
                         break
                    end % for
                         TFz4 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx031 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx31aa = str2num(char(lower(xx031)));
                
                           xxa31 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx31a = char(lower(xxa31)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z4 = cell2mat(string(xx31a))
                                ssa2z4 = strsplit(ssa1z4,",")
                                ssa3z4 = string(ssa2z4)
                                 
                                 ssssz4 = size(ssa2z4,2) 
                                 i1= 28 ; [row30,col30] = find(TF(28,:)==1)
                                 
                                phh30 =[];
                                for uy30= 1:ssssz4;
                                    phh30(uy30) = [col30(uy30)];
                                end;
                                disp(phh30)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz4 = ismissing(T)
                for j1z4 = 1:ssssz4
                    for ph1z4 = phh30    
                              disp(phh30)                 %          
                         if TFz4(28,phh30) ==1  
                             disp(ssa3z4(j1z4))
                             T(28,ph1z4) = array2table( cellstr(ssa3z4(j1z4)))
                             TFz4 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{64,1} = strcat('+',T{28,1})
                 TTa(64,2:cc) =  T(28,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{64,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{28,1} = strcat('-',T{28,1})
                 TT(28,2:end) =  T(28,2:end)
                  
                 TTa{63,1} = strcat('-',T{28,1})
                 TTa(63,2:cc) =  T(28,2:cc)
                                  
                 TTa{64,1} = strcat('+',T{28,1})
                 TTa(64,2:cc) =  T(28,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{64,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#LOCKED signal_blocks_nnusers_98457_R2020a
        %%
        %%
        %%
        %% Condition '#INCLUDE_BORROW Signal_Blocks:asset_info=98457_R2020a'
    case '#INCLUDE_BORROW Signal_Blocks:asset_info=98457_R2020a'
        'hi32'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{29,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z5 = T(29,1) ; y12z5 = T(29,2);

        yy1z5 = table2array(y11z5) +" "+ table2array(y12z5)
                pause(1)
        if yy1z5 == '#INCLUDE_BORROW Signal_Blocks:asset_info=98457_R2020a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{29,1} = strcat('-',T{29,1})
                 TT(29,2:end) =  T(29,2:end)
                  
                 TTa{65,1} = strcat('-',T{29,1})
                 TTa(65,2:cc) =  T(29,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp32a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp32 = str2num(char(lower(xxpp32a)));
                 
                   for mt = 1:xxpp32                   
                         xx32 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx32 = char(lower(xx32)) 
                        xx32a = string(xx32)
                         ss1z5 = cell2mat(xx32a)
                         ss2z5 = strsplit(ss1z5,",")
                         ss3z5 = cell2table(ss2z5)
                         newStrrz5 =  erase(table2array(T(:,3:end)),table2array(ss3z5))
                         T(:,3:end) =   (newStrrz5)
                         break
                    end % for
                         TFz5 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx032 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx32aa = str2num(char(lower(xx032)));
                
                           xxa32 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx32a = char(lower(xxa32)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z5 = cell2mat(string(xx32a))
                                ssa2z5 = strsplit(ssa1z5,",")
                                ssa3z5 = string(ssa2z5)
                                 
                                 ssssz5 = size(ssa2z5,2) 
                                 i1= 29 ; [row31,col31] = find(TF(29,:)==1)
                                 
                                phh31 =[];
                                for uy31= 1:ssssz5;
                                    phh31(uy31) = [col31(uy31)];
                                end;
                                disp(phh31)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz5 = ismissing(T)
                for j1z5 = 1:ssssz5
                    for ph1z5 = phh31    
                              disp(phh31)                 %          
                         if TFz5(29,phh31) ==1  
                             disp(ssa3z5(j1z5))
                             T(29,ph1z5) = array2table( cellstr(ssa3z5(j1z5)))
                             TFz5 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{66,1} = strcat('+',T{29,1})
                 TTa(66,2:cc) =  T(29,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{66,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{29,1} = strcat('-',T{29,1})
                 TT(29,2:end) =  T(29,2:end)
                  
                 TTa{65,1} = strcat('-',T{29,1})
                 TTa(65,2:cc) =  T(29,2:cc)
                                  
                 TTa{66,1} = strcat('+',T{29,1})
                 TTa(66,2:cc) =  T(29,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{66,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#LOCKED signal_blocks_nnusers_98457_R2020a 
        %%
        %%
        %%
        %% Condition '#LOCKED sl_verification_validation:asset_info=98457'
    case '#LOCKED sl_verification_validation:asset_info=98457'
        'hi33'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{30,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z6 = T(30,1) ; y12z6 = T(30,2);

        yy1z6 = table2array(y11z6) +" "+ table2array(y12z6)
                pause(1)
        if yy1z6 == '#LOCKED sl_verification_validation:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{30,1} = strcat('-',T{30,1})
                 TT(30,2:end) =  T(30,2:end)
                  
                 TTa{67,1} = strcat('-',T{30,1})
                 TTa(67,2:cc) =  T(30,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp33a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp33 = str2num(char(lower(xxpp33a)));
                 
                   for mt = 1:xxpp33                   
                         xx33 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx33 = char(lower(xx33)) 
                        xx33a = string(xx33)
                         ss1z6 = cell2mat(xx33a)
                         ss2z6 = strsplit(ss1z6,",")
                         ss3z6 = cell2table(ss2z6)
                         newStrrz6 =  erase(table2array(T(:,3:end)),table2array(ss3z6))
                         T(:,3:end) =   (newStrrz6)
                         break
                    end % for
                         TFz6 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx033 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx33aa = str2num(char(lower(xx033)));
                
                           xxa33 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx33a = char(lower(xxa33)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z6 = cell2mat(string(xx33a))
                                ssa2z6 = strsplit(ssa1z6,",")
                                ssa3z6 = string(ssa2z6)
                                 
                                 ssssz6 = size(ssa2z6,2) 
                                 i1= 30 ; [row32,col32] = find(TF(30,:)==1)
                                 
                                phh32 =[];
                                for uy32= 1:ssssz6;
                                    phh32(uy32) = [col32(uy32)];
                                end;
                                disp(phh32)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz6 = ismissing(T)
                for j1z6 = 1:ssssz6
                    for ph1z6 = phh32    
                              disp(phh32)                 %          
                         if TFz6(30,phh32) ==1  
                             disp(ssa3z6(j1z6))
                             T(30,ph1z6) = array2table( cellstr(ssa3z6(j1z6)))
                             TFz6 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{68,1} = strcat('+',T{30,1})
                 TTa(68,2:cc) =  T(30,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{68,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{30,1} = strcat('-',T{30,1})
                 TT(30,2:end) =  T(30,2:end)
                  
                 TTa{67,1} = strcat('-',T{30,1})
                 TTa(67,2:cc) =  T(30,2:cc)
                                  
                 TTa{68,1} = strcat('+',T{30,1})
                 TTa(68,2:cc) =  T(30,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{68,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED sl_verification_validation:asset_info=98457 
         %%
        %%
        %%
        %% Condition '#INCLUDE_BORROW sl_verification_validation:asset_info=98457'
    case '#INCLUDE_BORROW sl_verification_validation:asset_info=98457'
        'hi34'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{31,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z7 = T(31,1) ; y12z7 = T(31,2);

        yy1z7 = table2array(y11z7) +" "+ table2array(y12z7)
                pause(1)
        if yy1z7 == '#INCLUDE_BORROW sl_verification_validation:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{31,1} = strcat('-',T{31,1})
                 TT(31,2:end) =  T(31,2:end)
                  
                 TTa{69,1} = strcat('-',T{31,1})
                 TTa(69,2:cc) =  T(31,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp34a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp34 = str2num(char(lower(xxpp34a)));
                 
                   for mt = 1:xxpp34                   
                         xx34 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx34 = char(lower(xx34)) 
                        xx34a = string(xx34)
                         ss1z7 = cell2mat(xx34a)
                         ss2z7 = strsplit(ss1z7,",")
                         ss3z7 = cell2table(ss2z7)
                         newStrrz7 =  erase(table2array(T(:,3:end)),table2array(ss3z7))
                         T(:,3:end) =   (newStrrz7)
                         break
                    end % for
                         TFz7 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx034 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx34aa = str2num(char(lower(xx034)));
                
                           xxa34 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx34a = char(lower(xxa34)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z7 = cell2mat(string(xx34a))
                                ssa2z7 = strsplit(ssa1z7,",")
                                ssa3z7 = string(ssa2z7)
                                 
                                 ssssz7 = size(ssa2z7,2) 
                                 i1= 31 ; [row33,col33] = find(TF(31,:)==1)
                                 
                                phh33 =[];
                                for uy33= 1:ssssz7;
                                    phh33(uy33) = [col33(uy33)];
                                end;
                                disp(phh33)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz7 = ismissing(T)
                for j1z7 = 1:ssssz7
                    for ph1z7 = phh33    
                              disp(phh33)                 %          
                         if TFz7(31,phh33) ==1  
                             disp(ssa3z7(j1z7))
                             T(31,ph1z7) = array2table( cellstr(ssa3z7(j1z7)))
                             TFz7 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{70,1} = strcat('+',T{31,1})
                 TTa(70,2:cc) =  T(31,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{70,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{31,1} = strcat('-',T{31,1})
                 TT(31,2:end) =  T(31,2:end)
                  
                 TTa{69,1} = strcat('-',T{31,1})
                 TTa(69,2:cc) =  T(31,2:cc)
                                  
                 TTa{70,1} = strcat('+',T{31,1})
                 TTa(70,2:cc) =  T(31,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{70,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #INCLUDE_BORROW sl_verification_validation:asset_info=98457
        %%
        %%
        %%
        %% Condition  '#LOCKED simulink_nnusers_98457'
    case '#LOCKED simulink_nnusers_98457'
           'hi4'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{32,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11c = T(32,1) ; y12c = T(32,2);

        yy1c = table2array(y11c) +" "+ table2array(y12c)
                pause(1)
        if yy1c == '#LOCKED simulink_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{32,1} = strcat('-',T{32,1})
                 TT(32,2:end) =  T(32,2:end)
                  
                 TTa{7,1} = strcat('-',T{32,1})
                 TTa(7,2:cc) =  T(32,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp4a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp4 = str2num(char(lower(xxpp4a)));
                 
           for mt = 1:xxpp4                    
                 xx4 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx4a = char(lower(xx4)) 
                xx4a = string(xx4)
                 ss1c = cell2mat(xx4a)
                 ss2c = strsplit(ss1c,",")
                 ss3c = cell2table(ss2c)
                 newStrrc =  erase(table2array(T(:,3:end)),table2array(ss3c))
                 T(:,3:end) =   (newStrrc)
                 break
            end % for
                 TFc = ismissing(T)
                 save Taa
                 pause(0.5)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx04 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx4aa = str2num(char(lower(xx04)));
                
                           xxa4 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx4a = char(lower(xxa4)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1c = cell2mat(string(xx4a))
                                ssa2c = strsplit(ssa1c,",")
                                 ssa3c = string(ssa2c)
                                 
                                 ssssc = size(ssa2c,2) 
                                 i1= 32 ; [row3,col3] = find(TF(32,:)==1)
                                 
                                phh3 =[];
                                for uy3= 1:ssssc;
                                    phh3(uy3) = [col3(uy3)];
                                end;
                                disp(phh3)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFc = ismissing(T)
                for j1c = 1:ssssc
                    for ph1c = phh3    
                              disp(ph1c)                 %          
                         if TFc(32,ph1c) ==1  
                             disp(ssa3c(j1c))
                             T(32,ph1c) = array2table( cellstr(ssa3c(j1c)))
                             TFc = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{8,1} = strcat('+',T{32,1})
                 TTa(8,2:cc) =  T(32,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{8,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{32,1} = strcat('-',T{32,1})
                 TT(32,2:end) =  T(32,2:end)
                  
                 TTa{7,1} = strcat('-',T{32,1})
                 TTa(7,2:cc) =  T(32,2:cc)
                 TTa{8,1} = strcat('+',T{32,1})
                 TTa(8,2:cc) =  T(32,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{8,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#Locked simulink_nnusers_98457'
         % do something
         %% 
         %% #INCLUDE_BORROW SIMULINK:asset_info=98457'
    case '#INCLUDE_BORROW SIMULINK:asset_info=98457'
        'hi5'
                 set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{33,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11d = T(33,1) ; y12d = T(33,2);

        yy1d = table2array(y11d) +" "+ table2array(y12d)
                pause(1)
        if yy1d == '#INCLUDE_BORROW SIMULINK:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{33,1} = strcat('-',T{33,1})
                 TT(33,2:end) =  T(33,2:end)
                  
                 TTa{9,1} = strcat('-',T{33,1})
                 TTa(9,2:cc) =  T(33,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp5a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp5 = str2num(char(lower(xxpp5a)));
                 
           for mt = 1:xxpp5                    
                 xx5 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx5a = char(lower(xx5)) 
                xx5a = string(xx5)
                 ss1d = cell2mat(xx5a)
                 ss2d = strsplit(ss1d,",")
                 ss3d = cell2table(ss2d)
                 newStrrd =  erase(table2array(T(:,3:end)),table2array(ss3d))
                 T(:,3:end) =   (newStrrd)
                 break
            end % for
                 TFd = ismissing(T)
                 save Taa
                 pause(0.5)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx05 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx5aa = str2num(char(lower(xx05)));
                
                           xxa5 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx5a = char(lower(xxa5)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1d = cell2mat(string(xx5a))
                                ssa2d = strsplit(ssa1d,",")
                                 ssa3d = string(ssa2d)
                                 
                                 ssssd = size(ssa2d,2) 
                                 i1= 33 ; [row4,col4] = find(TF(33,:)==1)
                                 
                                phh4 =[];
                                for uy4= 1:ssssd;
                                    phh4(uy4) = [col4(uy4)];
                                end;
                                disp(phh4)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFd = ismissing(T)
                for j1d = 1:ssssd
                    for ph1d = phh4    
                              disp(ph1d)                 %          
                         if TFd(33,ph1d) ==1  
                             disp(ssa3d(j1d))
                             T(33,ph1d) = array2table( cellstr(ssa3d(j1d)))
                             TFd = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{10,1} = strcat('+',T{33,1})
                 TTa(10,2:cc) =  T(33,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{8,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{32,1} = strcat('-',T{32,1})
                 TT(32,2:end) =  T(32,2:end)
                  
                 TTa{9,1} = strcat('-',T{33,1})
                 TTa(9,2:cc) =  T(33,2:cc)
                                  
                 TTa{10,1} = strcat('+',T{33,1})
                 TTa(10,2:cc) =  T(33,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{10,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#INCLUDE_BORROW SIMULINK:asset_info=98457'
        %%
        %% 
        %% '#LOCKED stateflow_nnusers_98457'
    case '#LOCKED stateflow_nnusers_98457'
        'hi6'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{34,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11e = T(34,1) ; y12e = T(34,2);

        yy1e = table2array(y11e) +" "+ table2array(y12e)
                pause(1)
        if yy1e == '#LOCKED stateflow_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{34,1} = strcat('-',T{34,1})
                 TT(34,2:end) =  T(34,2:end)
                  
                 TTa{11,1} = strcat('-',T{34,1})
                 TTa(11,2:cc) =  T(34,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp6a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp6 = str2num(char(lower(xxpp6a)));
                 
           for mt = 1:xxpp6                    
                 xx6 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx6a = char(lower(xx6)) 
                xx6a = string(xx6)
                 ss1e = cell2mat(xx6a)
                 ss2e = strsplit(ss1e,",")
                 ss3e = cell2table(ss2e)
                 newStrre =  erase(table2array(T(:,3:end)),table2array(ss3e))
                 T(:,3:end) =   (newStrre)
                 break
            end % for
                 TFe = ismissing(T)
                 save Taa
                 pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx06 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx6aa = str2num(char(lower(xx06)));
                
                           xxa6 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx6a = char(lower(xxa6)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1e = cell2mat(string(xx6a))
                                ssa2e = strsplit(ssa1e,",")
                                 ssa3e = string(ssa2e)
                                 
                                 sssse = size(ssa2e,2) 
                                 i1= 34 ; [row5,col5] = find(TF(34,:)==1)
                                 
                                phh5 =[];
                                for uy5= 1:sssse;
                                    phh5(uy5) = [col5(uy5)];
                                end;
                                disp(phh5)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFe = ismissing(T)
                for j1e = 1:sssse
                    for ph1e = phh5    
                              disp(ph1e)                 %          
                         if TFe(34,ph1e) ==1  
                             disp(ssa3e(j1e))
                             T(34,ph1e) = array2table( cellstr(ssa3e(j1e)))
                             TFe = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{12,1} = strcat('+',T{34,1})
                 TTa(12,2:cc) =  T(34,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{12,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{34,1} = strcat('-',T{34,1})
                 TT(34,2:end) =  T(34,2:end)
                  
                 TTa{11,1} = strcat('-',T{34,1})
                 TTa(11,2:cc) =  T(34,2:cc)
                                  
                 TTa{12,1} = strcat('+',T{34,1})
                 TTa(12,2:cc) =  T(34,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{12,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#LOCKED stateflow_nnusers_98457' 
      %% 
      %%
      %% '#INCLUDE_BORROW Stateflow:asset_info=98457'
    case '#INCLUDE_BORROW Stateflow:asset_info=98457'
        'hi7'
           set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{35,:}))
           set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11f = T(35,1) ; y12f = T(35,2);

        yy1f = table2array(y11f) +" "+ table2array(y12f)
                pause(1)
        if yy1f == '#INCLUDE_BORROW Stateflow:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{35,1} = strcat('-',T{35,1})
                 TT(35,2:end) =  T(35,2:end)
                  
                 TTa{13,1} = strcat('-',T{35,1})
                 TTa(13,2:cc) =  T(35,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp7a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2 30]);
                 xxpp7 = str2num(char(lower(xxpp7a)));
                 
           for mt = 1:xxpp7                    
                 xx7 = inputdlg({'Enter the User TID - edit (erase)'},...
              'Customer', [2 40]);    
                xx7a = char(lower(xx7)) 
                xx7a = string(xx7)
                 ss1f = cell2mat(xx7a)
                 ss2f = strsplit(ss1f,",")
                 ss3f = cell2table(ss2f)
                 newStrrf =  erase(table2array(T(:,3:end)),table2array(ss3f))
                 T(:,3:end) =   (newStrrf)
                 break
            end % for
                 TFf = ismissing(T)
                 save Taa
                 pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx07 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [1.3 30]);    
                             xx7aa = str2num(char(lower(xx07)));
                
                           xxa7 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx7a = char(lower(xxa7)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1f = cell2mat(string(xx7a))
                                ssa2f = strsplit(ssa1f,",")
                                 ssa3f = string(ssa2f)
                                 
                                 ssssf = size(ssa2f,2) 
                                 i1= 35 ; [row6,col6] = find(TF(35,:)==1)
                                 
                                phh6 =[];
                                for uy6= 1:ssssf;
                                    phh6(uy6) = [col6(uy6)];
                                end;
                                disp(phh6)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFf = ismissing(T)
                for j1f = 1:ssssf
                    for ph1f = phh6    
                              disp(ph1f)                 %          
                         if TFf(35,ph1f) ==1  
                             disp(ssa3f(j1f))
                             T(35,ph1f) = array2table( cellstr(ssa3f(j1f)))
                             TFf = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{14,1} = strcat('+',T{35,1})
                 TTa(14,2:cc) =  T(35,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{14,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);              
            writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
           
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{35,1} = strcat('-',T{35,1})
                 TT(35,2:end) =  T(35,2:end)
                  
                 TTa{13,1} = strcat('-',T{35,1})
                 TTa(13,2:cc) =  T(35,2:cc)
                                  
                 TTa{14,1} = strcat('+',T{35,1})
                 TTa(14,2:cc) =  T(35,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{14,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
        end % if '#INCLUDE_BORROW Stateflow:asset_info=98457'
  %%
  %%
  %% condition  '#LOCKED simulink_design_verifier_nnusers_98457'
    case '#LOCKED simulink_design_verifier_nnusers_98457'
        'hi36'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{36,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z8 = T(36,1) ; y12z8 = T(36,2);

        yy1z8 = table2array(y11z8) +" "+ table2array(y12z8)
                pause(1)
        if yy1z8 == '#LOCKED simulink_design_verifier_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{36,1} = strcat('-',T{36,1})
                 TT(36,2:end) =  T(36,2:end)
                  
                 TTa{71,1} = strcat('-',T{36,1})
                 TTa(71,2:cc) =  T(36,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp36a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp36 = str2num(char(lower(xxpp36a)));
                 
                   for mt = 1:xxpp36                   
                         xx36 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx36 = char(lower(xx36)) 
                        xx36a = string(xx36)
                         ss1z8 = cell2mat(xx36a)
                         ss2z8 = strsplit(ss1z8,",")
                         ss3z8 = cell2table(ss2z8)
                         newStrrz8 =  erase(table2array(T(:,3:end)),table2array(ss3z8))
                         T(:,3:end) =   (newStrrz8)
                         break
                    end % for
                         TFz8 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx036 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx36aa = str2num(char(lower(xx036)));
                
                           xxa36 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx36a = char(lower(xxa36)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z8 = cell2mat(string(xx36a))
                                ssa2z8 = strsplit(ssa1z8,",")
                                ssa3z8 = string(ssa2z8)
                                 
                                 ssssz8 = size(ssa2z8,2) 
                                 i1= 36 ; [row34,col34] = find(TF(36,:)==1)
                                 
                                phh34 =[];
                                for uy34= 1:ssssz8;
                                    phh34(uy34) = [col34(uy34)];
                                end;
                                disp(phh34)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz8 = ismissing(T)
                for j1z8 = 1:ssssz8
                    for ph1z8 = phh34    
                              disp(phh34)                 %          
                         if TFz8(36,phh34) ==1  
                             disp(ssa3z8(j1z8))
                             T(36,ph1z8) = array2table( cellstr(ssa3z8(j1z8)))
                             TFz8 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{72,1} = strcat('+',T{36,1})
                 TTa(72,2:cc) =  T(36,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{72,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{36,1} = strcat('-',T{36,1})
                 TT(36,2:end) =  T(36,2:end)
                  
                 TTa{71,1} = strcat('-',T{36,1})
                 TTa(71,2:cc) =  T(36,2:cc)
                                  
                 TTa{72,1} = strcat('+',T{36,1})
                 TTa(72,2:cc) =  T(36,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{72,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#LOCKED simulink_design_verifier_nnusers_98457
        %%
        %%
        %%
        %% Condition
    case '#INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457'
        'hi37'  
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{37,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z9 = T(37,1) ; y12z9 = T(37,2);

        yy1z9 = table2array(y11z9) +" "+ table2array(y12z9)
                pause(1)
        if yy1z9 == '#INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{37,1} = strcat('-',T{37,1})
                 TT(37,2:end) =  T(37,2:end)
                  
                 TTa{73,1} = strcat('-',T{37,1})
                 TTa(73,2:cc) =  T(37,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp37a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp37 = str2num(char(lower(xxpp37a)));
                 
                   for mt = 1:xxpp37                   
                         xx37 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx37 = char(lower(xx37)) 
                        xx37a = string(xx37)
                         ss1z9 = cell2mat(xx37a)
                         ss2z9 = strsplit(ss1z9,",")
                         ss3z9 = cell2table(ss2z9)
                         newStrrz9 =  erase(table2array(T(:,3:end)),table2array(ss3z9))
                         T(:,3:end) =   (newStrrz9)
                         break
                    end % for
                         TFz9 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx037 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx37aa = str2num(char(lower(xx037)));
                
                           xxa37 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx37a = char(lower(xxa37)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z9 = cell2mat(string(xx37a))
                                ssa2z9 = strsplit(ssa1z9,",")
                                ssa3z9 = string(ssa2z9)
                                 
                                 ssssz9 = size(ssa2z9,2) 
                                 i1= 37 ; [row35,col35] = find(TF(37,:)==1)
                                 
                                phh35 =[];
                                for uy35= 1:ssssz9;
                                    phh35(uy35) = [col35(uy35)];
                                end;
                                disp(phh35)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz9 = ismissing(T)
                for j1z9 = 1:ssssz9
                    for ph1z9 = phh35    
                              disp(phh35)                 %          
                         if TFz9(37,phh35) ==1  
                             disp(ssa3z9(j1z9))
                             T(37,ph1z9) = array2table( cellstr(ssa3z9(j1z9)))
                             TFz9 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{74,1} = strcat('+',T{37,1})
                 TTa(74,2:cc) =  T(37,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{74,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{37,1} = strcat('-',T{37,1})
                 TT(37,2:end) =  T(37,2:end)
                  
                 TTa{73,1} = strcat('-',T{37,1})
                 TTa(73,2:cc) =  T(37,2:cc)
                                  
                 TTa{74,1} = strcat('+',T{37,1})
                 TTa(74,2:cc) =  T(37,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{74,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457
       %%
        %%
        %%
        %% Condition
    case '#LOCKED simulink_design_verifier_nnusers_98457_R2019a'
        'hi38'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{38,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z10 = T(38,1) ; y12z10 = T(38,2);

        yy1z10 = table2array(y11z10) +" "+ table2array(y12z10)
                pause(1)
        if yy1z10 == '#LOCKED simulink_design_verifier_nnusers_98457_R2019a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{38,1} = strcat('-',T{38,1})
                 TT(38,2:end) =  T(38,2:end)
                  
                 TTa{75,1} = strcat('-',T{38,1})
                 TTa(75,2:cc) =  T(38,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp38a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp38 = str2num(char(lower(xxpp38a)));
                 
                   for mt = 1:xxpp38                   
                         xx38 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx38 = char(lower(xx38)) 
                        xx38a = string(xx38)
                         ss1z10 = cell2mat(xx38a)
                         ss2z10 = strsplit(ss1z10,",")
                         ss3z10 = cell2table(ss2z10)
                         newStrrz10 =  erase(table2array(T(:,3:end)),table2array(ss3z10))
                         T(:,3:end) =   (newStrrz10)
                         break
                    end % for
                         TFz10 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx038 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx38aa = str2num(char(lower(xx038)));
                
                           xxa38 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx38a = char(lower(xxa38)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z10 = cell2mat(string(xx38a))
                                ssa2z10 = strsplit(ssa1z10,",")
                                ssa3z10 = string(ssa2z10)
                                 
                                 ssssz10 = size(ssa2z10,2) 
                                 i1= 38 ; [row36,col36] = find(TF(38,:)==1)
                                 
                                phh36 =[];
                                for uy36= 1:ssssz10;
                                    phh36(uy36) = [col36(uy36)];
                                end;
                                disp(phh36)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz10 = ismissing(T)
                for j1z10 = 1:ssssz10
                    for ph1z10 = phh36    
                              disp(phh36)                 %          
                         if TFz10(38,phh36) ==1  
                             disp(ssa3z10(j1z10))
                             T(38,ph1z10) = array2table( cellstr(ssa3z10(j1z10)))
                             TFz10 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{76,1} = strcat('+',T{38,1})
                 TTa(76,2:cc) =  T(38,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{76,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{38,1} = strcat('-',T{38,1})
                 TT(38,2:end) =  T(38,2:end)
                  
                 TTa{75,1} = strcat('-',T{38,1})
                 TTa(75,2:cc) =  T(38,2:cc)
                                  
                 TTa{76,1} = strcat('+',T{38,1})
                 TTa(76,2:cc) =  T(38,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{76,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0); 
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED simulink_design_verifier_nnusers_98457_R2019a

        %%
        %%
        %%
        %% Condition
     case '#INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457_R2019a'
        'hi39'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{39,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z11 = T(39,1) ; y12z11 = T(39,2);

        yy1z11 = table2array(y11z11) +" "+ table2array(y12z11)
                pause(1)
        if yy1z11 == '#INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457_R2019a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{39,1} = strcat('-',T{39,1})
                 TT(39,2:end) =  T(39,2:end)
                  
                 TTa{77,1} = strcat('-',T{39,1})
                 TTa(77,2:cc) =  T(39,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp39a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp39 = str2num(char(lower(xxpp39a)));
                 
                   for mt = 1:xxpp39                   
                         xx39 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx39 = char(lower(xx39)) 
                        xx39a = string(xx39)
                         ss1z11 = cell2mat(xx39a)
                         ss2z11 = strsplit(ss1z11,",")
                         ss3z11 = cell2table(ss2z11)
                         newStrrz11 =  erase(table2array(T(:,3:end)),table2array(ss3z11))
                         T(:,3:end) =   (newStrrz11)
                         break
                    end % for
                         TFz11 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx039 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx39aa = str2num(char(lower(xx039)));
                
                           xxa39 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx39a = char(lower(xxa39)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z11 = cell2mat(string(xx39a))
                                ssa2z11 = strsplit(ssa1z11,",")
                                ssa3z11 = string(ssa2z11)
                                 
                                 ssssz11 = size(ssa2z11,2) 
                                 i1= 39 ; [row37,col37] = find(TF(39,:)==1)
                                 
                                phh37 =[];
                                for uy37= 1:ssssz11;
                                    phh37(uy37) = [col37(uy37)];
                                end;
                                disp(phh37)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz11 = ismissing(T)
                for j1z11 = 1:ssssz11
                    for ph1z11 = phh37    
                              disp(phh37)                 %          
                         if TFz11(39,phh37) ==1  
                             disp(ssa3z11(j1z11))
                             T(39,ph1z11) = array2table( cellstr(ssa3z11(j1z11)))
                             TFz11 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{78,1} = strcat('+',T{39,1})
                 TTa(78,2:cc) =  T(39,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{78,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{39,1} = strcat('-',T{39,1})
                 TT(39,2:end) =  T(39,2:end)
                  
                 TTa{77,1} = strcat('-',T{39,1})
                 TTa(77,2:cc) =  T(39,2:cc)
                                  
                 TTa{78,1} = strcat('+',T{39,1})
                 TTa(78,2:cc) =  T(39,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{78,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #INCLUDE_BORROW Simulink_Design_Verifier:asset_info=98457_R2019a 
        %%
        %%
        %%
        %% Condition - "#Locked vehicle_network_toolbox_98457"
    case '#LOCKED vehicle_network_toolbox_nnusers_98457'
        'hi40'  
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{40,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z12 = T(40,1) ; y12z12 = T(40,2);

        yy1z12 = table2array(y11z12) +" "+ table2array(y12z12)
                pause(1)
        if yy1z12 == '#LOCKED vehicle_network_toolbox_nnusers_98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{40,1} = strcat('-',T{40,1})
                 TT(40,2:end) =  T(40,2:end)
                  
                 TTa{79,1} = strcat('-',T{40,1})
                 TTa(79,2:cc) =  T(40,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp40a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp40 = str2num(char(lower(xxpp40a)));
                 
                   for mt = 1:xxpp40                   
                         xx40 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx40 = char(lower(xx40)) 
                        xx40a = string(xx40)
                         ss1z12 = cell2mat(xx40a)
                         ss2z12 = strsplit(ss1z12,",")
                         ss3z12 = cell2table(ss2z12)
                         newStrrz12 =  erase(table2array(T(:,3:end)),table2array(ss3z12))
                         T(:,3:end) =   (newStrrz12)
                         break
                    end % for
                         TFz12 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx040 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx40aa = str2num(char(lower(xx040)));
                
                           xxa40 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx40a = char(lower(xxa40)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z12 = cell2mat(string(xx40a))
                                ssa2z12 = strsplit(ssa1z12,",")
                                ssa3z12 = string(ssa2z12)
                                 
                                 ssssz12 = size(ssa2z12,2) 
                                 i1= 40 ; [row38,col38] = find(TF(40,:)==1)
                                 
                                phh38 =[];
                                for uy38= 1:ssssz12;
                                    phh38(uy38) = [col38(uy38)];
                                end;
                                disp(phh38)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz12 = ismissing(T)
                for j1z12 = 1:ssssz12
                    for ph1z12 = phh38    
                              disp(phh38)                 %          
                         if TFz12(40,phh38) ==1  
                             disp(ssa3z12(j1z12))
                             T(40,ph1z12) = array2table( cellstr(ssa3z12(j1z12)))
                             TFz12 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{80,1} = strcat('+',T{40,1})
                 TTa(80,2:cc) =  T(40,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{80,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{40,1} = strcat('-',T{40,1})
                 TT(40,2:end) =  T(40,2:end)
                  
                 TTa{79,1} = strcat('-',T{40,1})
                 TTa(79,2:cc) =  T(40,2:cc)
                                  
                 TTa{80,1} = strcat('+',T{40,1})
                 TTa(80,2:cc) =  T(40,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{80,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED vehicle_network_toolbox_nnusers_98457  
        %%
        %%
        %%
        %% Condition #INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457'
    case '#INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457'
        'hi41' 
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{41,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z13 = T(41,1) ; y12z13 = T(41,2);

        yy1z13 = table2array(y11z13) +" "+ table2array(y12z13)
                pause(1)
        if yy1z13 == '#INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{41,1} = strcat('-',T{41,1})
                 TT(41,2:end) =  T(41,2:end)
                  
                 TTa{81,1} = strcat('-',T{41,1})
                 TTa(81,2:cc) =  T(41,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp41a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp41 = str2num(char(lower(xxpp41a)));
                 
                   for mt = 1:xxpp41                   
                         xx41 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx41 = char(lower(xx41)) 
                        xx41a = string(xx41)
                         ss1z13 = cell2mat(xx41a)
                         ss2z13 = strsplit(ss1z13,",")
                         ss3z13 = cell2table(ss2z13)
                         newStrrz13 =  erase(table2array(T(:,3:end)),table2array(ss3z13))
                         T(:,3:end) =   (newStrrz13)
                         break
                    end % for
                         TFz13 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx041 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx41aa = str2num(char(lower(xx041)));
                
                           xxa41 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx41a = char(lower(xxa41)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z13 = cell2mat(string(xx41a))
                                ssa2z13 = strsplit(ssa1z13,",")
                                ssa3z13 = string(ssa2z123)
                                 
                                 ssssz13 = size(ssa2z13,2) 
                                 i1= 41 ; [row39,col39] = find(TF(41,:)==1)
                                 
                                phh39 =[];
                                for uy39= 1:ssssz13;
                                    phh39(uy39) = [col39(uy39)];
                                end;
                                disp(phh39)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz13 = ismissing(T)
                for j1z13 = 1:ssssz13
                    for ph1z13 = phh39    
                              disp(phh39)                 %          
                         if TFz13(41,phh39) ==1  
                             disp(ssa3z13(j1z13))
                             T(41,ph1z13) = array2table( cellstr(ssa3z13(j1z13)))
                             TFz13 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{82,1} = strcat('+',T{41,1})
                 TTa(82,2:cc) =  T(41,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{82,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{41,1} = strcat('-',T{41,1})
                 TT(41,2:end) =  T(41,2:end)
                  
                 TTa{81,1} = strcat('-',T{41,1})
                 TTa(81,2:cc) =  T(41,2:cc)
                                  
                 TTa{82,1} = strcat('+',T{41,1})
                 TTa(82,2:cc) =  T(41,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{82,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if   % #INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457'
        %%
        %%
        %%
        %% Condition #LOCKED vehicle_network_toolbox_nnusers_98457_R2019a'
    case '#LOCKED vehicle_network_toolbox_nnusers_98457_R2019a'
        'hi42'
         set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{42,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z14 = T(42,1) ; y12z14 = T(42,2);

        yy1z14 = table2array(y11z14) +" "+ table2array(y12z14)
                pause(1)
        if yy1z14 == '#LOCKED vehicle_network_toolbox_nnusers_98457_R2019a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{42,1} = strcat('-',T{42,1})
                 TT(42,2:end) =  T(42,2:end)
                  
                 TTa{83,1} = strcat('-',T{42,1})
                 TTa(83,2:cc) =  T(42,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp42a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp42 = str2num(char(lower(xxpp42a)));
                 
                   for mt = 1:xxpp42                   
                         xx42 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx42 = char(lower(xx42)) 
                        xx42a = string(xx42)
                         ss1z14 = cell2mat(xx42a)
                         ss2z14 = strsplit(ss1z14,",")
                         ss3z14 = cell2table(ss2z14)
                         newStrrz14 =  erase(table2array(T(:,3:end)),table2array(ss3z14))
                         T(:,3:end) =   (newStrrz14)
                         break
                    end % for
                         TFz14 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx042 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx42aa = str2num(char(lower(xx042)));
                
                           xxa42 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx42a = char(lower(xxa42)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z14 = cell2mat(string(xx42a))
                                ssa2z14 = strsplit(ssa1z14,",")
                                ssa3z14 = string(ssa2z14)
                                 
                                 ssssz14 = size(ssa2z14,2) 
                                 i1= 42 ; [row40,col40] = find(TF(42,:)==1)
                                 
                                phh40 =[];
                                for uy40= 1:ssssz14;
                                    phh40(uy40) = [col40(uy40)];
                                end;
                                disp(phh40)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz14 = ismissing(T)
                for j1z14 = 1:ssssz14
                    for ph1z14 = phh40    
                              disp(phh40)                 %          
                         if TFz14(42,phh40) ==1  
                             disp(ssa3z14(j1z14))
                             T(42,ph1z14) = array2table( cellstr(ssa3z14(j1z14)))
                             TFz14 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{84,1} = strcat('+',T{42,1})
                 TTa(84,2:cc) =  T(42,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{84,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{42,1} = strcat('-',T{42,1})
                 TT(42,2:end) =  T(42,2:end)
                  
                 TTa{83,1} = strcat('-',T{42,1})
                 TTa(83,2:cc) =  T(42,2:cc)
                                  
                 TTa{84,1} = strcat('+',T{42,1})
                 TTa(84,2:cc) =  T(42,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{84,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if % #LOCKED vehicle_network_toolbox_nnusers_98457_R2019a'
        %%
        %%
        %% 
        %% Condition #INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457_R2019a'
     case '#INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457_R2019a'
        'hi43' 
                set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{43,:}))
         set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(' '))
        
        pause(2)
        msgbox('Plz wait')
        
y11z15 = T(43,1) ; y12z15 = T(43,2);

        yy1z15 = table2array(y11z15) +" "+ table2array(y12z15)
                pause(1)
        if yy1z15 == '#INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457_R2019a'
    
                choice  = questdlg('Do you want to edit (erase) the user information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                                   
                 TT{43,1} = strcat('-',T{43,1})
                 TT(43,2:end) =  T(43,2:end)
                  
                 TTa{85,1} = strcat('-',T{43,1})
                 TTa(85,2:cc) =  T(43,2:cc)
%                  aaq = char(get(handles.edit4,'String'))
%         aaq
                 xxpp43a = inputdlg({'How many users information are you going to Erase from the list ?'},...
              'Customer', [2.5 30]);
                 xxpp43 = str2num(char(lower(xxpp43a)));
                 
                   for mt = 1:xxpp43                   
                         xx43 = inputdlg({'Enter the User TID - edit (erase)'},...
                      'Customer', [2.5 40]);    
                        xx43 = char(lower(xx43)) 
                        xx43a = string(xx43)
                         ss1z15 = cell2mat(xx43a)
                         ss2z15 = strsplit(ss1z15,",")
                         ss3z15 = cell2table(ss2z15)
                         newStrrz15 =  erase(table2array(T(:,3:end)),table2array(ss3z15))
                         T(:,3:end) =   (newStrrz15)
                         break
                    end % for
                         TFz15 = ismissing(T)
                         save Taa
                         pause(0.6)
                 %% incase if user want to add anything
                 choice1  = questdlg('Do you want to Add the user information ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
TF = ismissing(T);
            xx043 = inputdlg({'Are you going to Add how many users information ?'},...
                          'Customer', [2.5 30]);    
                             xx43aa = str2num(char(lower(xx043)));
                
                           xxa43 = inputdlg({'Enter the User TID '},...
                              'Customer', [2.5 40]);    
                                 xx43a = char(lower(xxa43)) 
%                                  xx1b = string(xx1a)
%                                  T{i,j} = {xx1b}
                                ssa1z15 = cell2mat(string(xx43a))
                                ssa2z15 = strsplit(ssa1z15,",")
                                ssa3z15 = string(ssa2z15)
                                 
                                 ssssz15 = size(ssa2z15,2) 
                                 i1= 43 ; [row41,col41] = find(TF(43,:)==1)
                                 
                                phh41 =[];
                                for uy41= 1:ssssz15;
                                    phh41(uy41) = [col41(uy41)];
                                end;
                                disp(phh41)
                    TF = ismissing(T)     
                %        for js = 3:(3+ssss)
                 TFz15 = ismissing(T)
                for j1z15 = 1:ssssz15
                    for ph1z15 = phh41    
                              disp(phh41)                 %          
                         if TFz15(43,phh41) ==1  
                             disp(ssa3z15(j1z15))
                             T(43,ph1z15) = array2table( cellstr(ssa3z15(j1z15)))
                             TFz15 = ismissing(T)
                              break
                          end % end IF
                            %              T{1,4} = ({ssa3(j1)})
                         save SA1
                %           end                  
                      end % end for(ph1)
                end % end for(j1)

                 TTa{86,1} = strcat('+',T{43,1})
                 TTa(86,2:cc) =  T(43,2:cc)
                 
                TTa = string(table2array(TTa))
                TTa = array2table(TTa)
                save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{86,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 
              
        
             case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                 TT{43,1} = strcat('-',T{43,1})
                 TT(43,2:end) =  T(43,2:end)
                  
                 TTa{85,1} = strcat('-',T{43,1})
                 TTa(85,2:cc) =  T(43,2:cc)
                                  
                 TTa{86,1} = strcat('+',T{43,1})
                 TTa(86,2:cc) =  T(43,2:cc)
                 
                 save Ta1                              
               
             set(handles.edit2, 'Min', 0, 'Max', 2,'String',string(TTa{86,:}))
             writetable(TTa,'rrr0.txt','Delimiter',' ','WriteVariableNames',0);
             writetable(TTa,'option_new.txt','Delimiter',' ','WriteVariableNames',0) 

            end % switch        
            
         end % if %#INCLUDE_BORROW Vehicle_Network_Toolbox:asset_info=98457_R2019a'
        %%
        %%
        %%
        %% Condition
        % do something
    otherwise
        error('Did not recognized string ''%s''', selectedString)
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% contents = get(handles.popupmenu1,'String'); 
% popupmenu1value = contents{get(handles.popupmenu1,'Value')};
% 
% switch popupmenu1value
%     case '-#LOCKED matlab_nnusers_860237'
%         'hi1'
%          % do something
%     case '+#LOCKED matlab_nnusers_860237'
%         'hi2'
%          % do something
%     case '-#LOCKED matlab_nnusers_98457'
%         'hi3'
%          % do something
%     case '+#LOCKED matlab_nnusers_98457'
%         'hi4'
%          % do something
%     otherwise
%         error('Did not recognized string ''%s''', selectedString)
% end 
global file file1

% % file = textread('copyy1.txt', '%s', 'delimiter', '\n', ...
% %                 'whitespace', '');
% % file
% % 
% % file1 = string(file);
T = readtable('NNU_Lic.txt','Delimiter',' ','ReadVariableNames',false, 'Format','%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s')
% % % T = readtable('copyy.txt',...
% % % 'Delimiter',' ','ReadVariableNames',false, 'Format','%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s')

T0 = T;
[rr cc] =size(T)

data = cell(85,23);
TT = cell2table(data)
TTa = table()
disp('size of T')
disp(size(T))
global T0 T data TT TTa rr cc



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
contents = get(handles.popupmenu1,'String'); 
popupmenu1value = contents{get(handles.popupmenu1,'Value')};
popupmenu1value
switch popupmenu1value
    case '#LOCKED matlab_nnusers_860237'
        set(handles.edit1, 'Min', 0, 'Max', 2,'String',string(T{1,:}))
        
        y11 = T(2,1) ; y12 = T(2,2);

        yy1 = table2array(y11) +" "+ table2array(y12)
        
        pause(1)
        if yy1 == '#LOCKED matlab_nnusers_860237'
           choice  = questdlg('Do you want to edit the information ?', ...
                'User Menu', ...
	         'Yes', 'No','No');
         choice
            % Handle response
            switch choice
                case 'Yes'
                    Ta(1,1) =  T(1,1);
table(strcat('-',table2array(vv)))
        yy1 = table2array(y11) +" "+ table2array(y12)
        
                 xx = inputdlg({'Enter the User TID '},...
              'Customer', [1 30]);    
                 xx1 = string(lower(xx)) 
                 
                 gg = find(strcmp(xx1,table2array(T(1,3:end))))
                 gg
                case 'No'
                    disp([choice ' coming right up.'])
                    dessert = 2;
                
            end
        end

         % do something
    case '#LOCKED matlab_nnusers_860237'
        'hi2'
         % do something
    case '#LOCKED matlab_nnusers_98457'
        'hi3'
         % do something
    case '#INCLUDE_BORROW MATLAB:asset_info=98457'
           'hi4'
         % do something
    case '#LOCKED simulink_nnusers_98457'
        'hi5'
         % do something
    case '#INCLUDE_BORROW SIMULINK:asset_info=98457'
        'hi6'
    case '#LOCKED stateflow_nnusers_98457'
        'hi7'
    case '#INCLUDE_BORROW Stateflow:asset_info=98457'
        'hi8'
    otherwise
        error('Did not recognized string ''%s''', selectedString)
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ha=axes('units','normalized','pos',[0 0 1 1]);
uistack(ha,'down');
ii=imread('MLM_img.jpg');
image(ii);
colormap gray
set(ha,'handlevisibility','off','visible','on');
