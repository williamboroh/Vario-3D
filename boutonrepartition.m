ele=get(ju,'Value');
axes('Position',[0.3,0.3,0.65,0.65]);
h = findobj(gca,'Type','patch');
 plot(plan.x,plan.y,'+');
