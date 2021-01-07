clc;clear;
fPrincipal=figure; %MAIN WINDOW
set(fPrincipal,'color',[1 1 1],'menubar','none','name','VARIO 3D','numbertitle','off','resize','off','position',[200,200,940,500]);
fMenu0=uimenu(fPrincipal,'Label','File');
sfMenu0=uimenu(fMenu0,'Label','Exit Alt+F4 ','callback','delete(fPrincipal)','enable','on');

fMenu=uimenu(fPrincipal,'Label','Data');
sfMenu=uimenu(fMenu,'Label','Data Import','callback','import_var');

fMenu1=uimenu(fPrincipal,'Label','Planes operations','enable','off');
sfMenu11=uimenu(fMenu1,'Label','Calculation of planes','callback','planecal');
sfMenu12=uimenu(fMenu1,'Label','Planes extraction','callback','planeextract','enable','off');

fMenu2=uimenu(fPrincipal,'Label','Statistical Analysis','enable','off');
sfMenu21=uimenu(fMenu2,'Label','Histogram & Statistics Parameters','callback','histostat');
sfMenu22=uimenu(fMenu2,'Label','Drilling Holes Map','callback','cbrepartition');

fMenu3=uimenu(fPrincipal,'Label','Variographic Analysis','enable','off');
sfMenu31=uimenu(fMenu3,'Label','Calculate & Fit Variogram ','callback','fenvario');

