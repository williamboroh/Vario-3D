model=get(pop3,'value');
switch model
    case 1
        model='spherical';
    case 2
        model='gaussian';
    case 3
        model='exponential';
end
a0 = 0 ;     a0 = num2str(a0);
c0 = 0; c0 = num2str(c0);
prompt={'Enter the minimal range          ',...
        'Enter the nugget                      ',...
       } ; 
        
default = {a0,c0};
title2  = 'Variogram Fit ';
lineNo  = 1;
Resize  = 'on';
answer=inputdlg(prompt,title2,lineNo,default,Resize);
a0     = str2num(answer{1}); 
c0  = str2num(answer{2}); 
[a,c,nob,S] = variogramfit(hh,gg,a0,c0,model);
hh2(1)=0;  varmod(1)=c0;
for i=1:length(hh)
    hh2(i+1)=hh(i);
    varmod(i+1)=S.gammahat(i);
end
plot(hh2,varmod)
hold on
   plot(hh,gg)
   hold off
   xlabel('lag distance h')
    ylabel('\gamma(h)')
    set(tex8,'string',num2str(c0))
    set(tex9,'string',num2str(c))
    set(tex12,'string',num2str(a))
    