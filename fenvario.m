fPrincipal=figure; %Fenetre Principale 

set(fPrincipal,'color','w','menubar','none','name','Variogram Modeling ','numbertitle','off','resize','off','position',[200,200,940,500]); 
tex=uicontrol('Style','Text','Position', [60 470 100 20],'string','Element');
pop1=uicontrol('Style', 'popup','String', ' ','Position', [60 430 100 20]); 
tex61=uicontrol('Style','Text','Position',[60 400 100 20],'string','Model');
pop3=uicontrol('Style','popup','String','Spheric|Gaussian|Exponential','Position',[60 340 100 50]);
tex5=uicontrol('Style','text','string','Nugget','Position',[60 330 100 20]);
tex8=uicontrol('Style','edit','string','','Position',[60 300 100 20]);
tex10=uicontrol('Style','Text','Position',[60 270 100 20],'string','Sill');
tex9=uicontrol('Style','edit','Position',[60 240 100 20]);
tex11=uicontrol('Style','Text','Position',[60 210 100 20],'string','Range');
tex12=uicontrol('Style','edit','Position',[60 180 100 20]);

bou1=uicontrol('Style','pushbutton','Position',[400 40 100 50],'string','Plot','Callback','cbvario2D');
bou2=uicontrol('Style','pushbutton','Position',[600 40 100 50],'string','Fit','Callback','boutonvario');

