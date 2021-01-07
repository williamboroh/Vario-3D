axes('Position',[0.3,0.3,0.65,0.65]);
clear axes;
ele=get(ju,'Value');
x1=plan.ten;
n1=length(x1);
y1=mean(x1);
var1=var(x1);
m1=median(x1);
k1=std(x1);
set(tex8,'string',num2str(y1));
set(tex9,'string',num2str(var1));
set(tex12,'string',num2str(m1));
set(tex14,'string',num2str(k1));
histogram(x1);