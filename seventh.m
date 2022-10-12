close all;
clc;
clear all;

Cz=3+(4108/5000);

for Kpz=1:88
  Kdz=15;
  s1(Kpz)=(-Kdz-Cz-sqrt((Kdz+Cz)^2-4*Kpz))/2;
  s2(Kpz)=(-Kdz-Cz+sqrt((Kdz+Cz)^2-4*Kpz))/2;
endfor
figure;
plot(real(s1),imag(s1));
xlabel("real");
ylabel("image");
title("s1 with Kpz");

figure;
plot(real(s2),imag(s2));
xlabel("real");
ylabel("image");
title("s2 with Kpz");