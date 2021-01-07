g1=mean(coordx); 
g2=mean(coordy);
g3=mean(coordz);
g=[g1 g2 g3];    
for i =1: length(coordx)
    coordx1(i)=coordx(i)-g1;
    coordy1(i)=coordy(i)-g2;
    coordz1(i)=coordz(i)-g3;
end
p1=[0 1 0];
p2=[1 0 0];
m=1;
n0=[0 0 -1];
n=length(coordx);
wai = waitbar(0,'Please wait...');
dre = n;
for i= 1:n
    a=[coordx1(i) coordy1(i) coordz1(i)];
    cn=cross(a - p1, a - g);
    al=angplan(cn,n0);
    if al >90
        al= - (180-al);
    end
    cor.x1(m)=a(1) ;
    cor.y1(m)=a(2) ;
    cor.z1(m)=a(3) ;
    cor.ten1(m)=ten(i) ;
    cor.ang(m)=al;
    cor.norx(m)=cn(1);
    cor.nory(m)=cn(2);
    cor.norz(m)=cn(3);
    waitbar(m/dre,wai,sprintf('Please wait... %0.0f %%',m*100/dre),'color','b');
    m=m+1;
    
end
close(wai)
plane(1,:)=cor.x1;
plane(2,:)=cor.y1;
plane(3,:)=cor.z1;
plane(4,:)=cor.ang;
save planes.dat plane -ascii
SMS=sprintf('Operation done successfully and data saved to planes.dat'); 
warndlg(SMS,'Planes calculation') 
figure
hist(cor.ang)
title('Dips calculated')
set(sfMenu12,'enable','on');
