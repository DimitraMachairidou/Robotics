close all;
clc;
clear all;

Cz=3+(4108/5000);

for Kdz=1:100
  Kpz=5;
  s1(Kdz)=(-Kdz-Cz-sqrt((Kdz+Cz)^2-4*Kpz))/2;
  s2(Kdz)=(-Kdz-Cz+sqrt((Kdz+Cz)^2-4*Kpz))/2;
endfor
figure;
plot(real(s1),imag(s1));
xlabel("real");
ylabel("image");
title("s1 with Kdz");

figure;
plot(real(s2),imag(s2));
xlabel("real");
ylabel("image");
title("s2 with Kdz");

