clear all;
clear all;

M=1;
Iz=0.08;
g=9.81;

fz=(M*g)+(4108/1000);
tz=0;

z(1)=4108/1000;
z1(1)=0;
y(1)=0;
y1(1)=0;

Cz=3-(4108/5000);
Cy=5+(4108/5000);

h=0.001;
t=[0:0.001:30];
for n = 2:31
  z2(n)=(fz-g*M-Cz*abs(z1(n-1))*z1(n-1))/M;
  z1(n)=z1(n-1)+h*(fz-g*M-Cz*abs(z1(n-1)+(h/2)*z2(n-1))*(z1(n-1)+(h/2)*z2(n-1)))/M;
  z(n)=z(n-1)+h*z1(n-1);
  
  y2(n)=(tz-Cy*abs(y1(n-1))*y1(n-1))/Iz;
  y1(n)=y1(n-1)+h*(tz-Cy*abs(y1(n-1)+(h/2)*y2(n-1))*(y1(n-1)+(h/2)*y2(n-1)))/Iz;
  y(n)=y(n-1)+h*y1(n-1);
endfor
figure;
plot(z);
title("z");

figure;
plot(y);
title("y");

figure;
plot(z1);
title("z'");

figure;
plot(y1);
title("y'");