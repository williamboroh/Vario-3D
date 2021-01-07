pen = 0 ;     pen = num2str(pen);
tol = 0; tol = num2str(tol);
prompt={'Enter the dip           ',...
        'Enter the tolerance                      ',...
       } ; 
        
default = {pen,tol};
title2  = 'Plane Extract Parameters ';
lineNo  = 1;
Resize  = 'on';
answer=inputdlg(prompt,title2,lineNo,default,Resize);
pen     = str2num(answer{1}); 
tol  = str2num(answer{2}); 
d=1;
for i=1:length(cor.x1)
    if  (cor.ang(i) <=pen+tol && cor.ang(i) >=pen-tol)
        plan.x(d)=cor.x1(i);
        plan.y(d)=cor.y1(i);
        plan.z(d)=cor.z1(i);
        plan.ten(d)=cor.ten1(i);
        plan.ang(d)=cor.ang(i);
        d=d+1;
    end
end
plan.x= plan.x+ g1;
plan.y= plan.y+ g2;
plan.z= plan.z+ g3;
save extracteddataplanes.dat plan -ascii
SMS=sprintf('Operation Done Successfully and Data saved to extracteddataplanes.dat'); 
warndlg(SMS,'Planes Extraction') 
set(fMenu2,'enable','on');
set(fMenu3,'enable','on');
