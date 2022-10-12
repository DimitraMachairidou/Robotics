close all;
clc;
clear all;

t1=[0:0.001:30];
for t1 = 2:31
  z3(t1)=20.54-16.8400074*e.^(-0.348055017*t1)+0.4080074288*e.^(-14.365544983*t1);
endfor
figure;
plot(z3);
title("analitiki");

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
  
  z(n)=z(n-1)+h*z1(n-1);
  z1(n)=z1(n-1)+h*(fz(n-1)-g*M-Cz*z1(n-1))/M;
endfor
figure;
plot(z);
title("z");

figure;
plot(z1);
title("z'");

for n = 2:31
  fz(n-1)=(M*g)+Kpz*(zdes-z(n-1))- Kdz*(z1(n-1));
  
  z2(n)=(fz(n-1)-g*M-Cz*abs(z1(n-1))*z1(n-1))/M;
  z1(n)=z1(n-1)+h*(fz(n-1)-g*M-Cz*abs(z1(n-1)+(h/2)*z2(n-1))*(z1(n-1)+(h/2)*z2(n-1)))/M;
  z(n)=z(n-1)+h*z1(n-1);
endfor
figure;
plot(z);
title("tropopoihmenh z");

figure;
plot(z1);
title("tropopoihmenh z'");