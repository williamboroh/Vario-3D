fPrincipal=figure; %Fenetre Principale 

set(fPrincipal,'color','w','menubar','none','name','Histogram & Statistics ','numbertitle','off','resize','off','position',[500,200,740,400]);
ju=uicontrol('Style', 'popup',...
           'String', ' ',...
           'Position', [20 330 100 50]);   
            % The popup function handle callback
            % is implemented as a local function

tex6=uicontrol('Style','Text','Position',[20 330 100 20],'string','Statistics');
tex7=uicontrol('Style','pushbutton','Position',[400 20 100 50],'string','Plot','Callback','boutonhispam');

tex5=uicontrol('Style','text','string','Mean','Position',[20 300 100 20]);
tex8=uicontrol('Style','Text','string','','Position',[20 280 100 20]);
tex10=uicontrol('Style','Text','Position',[20 250 100 20],'string','Variance');
tex9=uicontrol('Style','Text','Position',[20 230 100 20]);
tex11=uicontrol('Style','Text','Position',[20 200 100 20],'string','Medium');
tex12=uicontrol('Style','Text','Position',[20 180 100 20]);
tex13=uicontrol('Style','Text','Position',[20 150 100 20],'string','Standard deviation');
tex14=uicontrol('Style','Text','Position',[20 130 100 20]);
