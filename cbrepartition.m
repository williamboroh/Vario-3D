fPrincipal=figure; %Fenetre Principale 

set(fPrincipal,'color','w','menubar','none','name','Drill Holes Maps','numbertitle','off','resize','off','position',[500,200,740,400]);
ju=uicontrol('Style', 'popup',...
           'String', ' ',...
           'Position', [20 280 100 50]);   

  tex7=uicontrol('Style','pushbutton','Position',[400 20 100 50],'string','Draw','Callback','boutonrepartition');