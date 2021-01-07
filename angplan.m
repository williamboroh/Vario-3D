function a=angplan(p1,p2)
    num=p1(1)*p2(1) + p1(2)*p2(2) + p1(3)*p2(3);
    den=sqrt((p1(1)^2 +p1(2)^2+ p1(3)^2) * (p2(1)^2 +p2(2)^2+ p2(3)^2));
    a=acosd(num/den);