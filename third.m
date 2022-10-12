close all;
clc;
clear all;

M=1;
Iz=0.08;
g=9.81;

z(1)=4108/1000;
z1(1)=0;
y(1)=0;
y1(1)=0;

Cz=3+(4108/5000);
Cy=5;

h=0.001;
t=[0:0.001:30];
 
Kpy=5; 
Kdy=20; 
Kpz=5; 
Kdz=15-(4108/1000);
ydes=4108/3000; 
zdes=4108/200;
for n = 2:31
  fz(n-1)=(M*g)+Kpz*(zdes-z(n-1))- Kdz*(z1(n-1));
  tz(n-1)= Kpy*(ydes-y(n-1))- Kdy*(y1(n-1));
  
  z(n)=z(n-1)+h*z1(n-1);
  z1(n)=z1(n-1)+h*(fz(n-1)-g*M-Cz*abs(z1(n-1))*z1(n-1))/M;
  
  y(n)=y(n-1)+h*y1(n-1);
  y1(n)=y1(n-1)+h*(tz(n-1)-Cy*abs(y1(n-1))*y1(n-1))/Iz;
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