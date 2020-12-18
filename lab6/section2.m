close all; clc;
M = 11;
m = -M:M;
A = 10;
%square wave
T = 1E-3; 
wo = 2*pi/T;
tp=0.25E-3;
cm = (sin(m*pi/2)./(m*pi)).*(exp(-1j*m*wo*tp));
cm(m == 0) = 0.5;
%plot coefficients
figure(1);
stem(m,abs(cm),'b'); 
grid on; 
xlabel('harmonic'); 
ylabel('magnitude');
title('Spectum'); 


t = -1E-3:2E-3/1000:2E-3; 
%1001 points from 0 sec to 4 sec
y = zeros(size(t));
for i = -M:M
    y = y+cm(m==i)*exp(1j*i*wo*t);
end
figure(2);
plot(t,real(y));
grid on;
xlabel('t sec');
ylabel('y');
title('square wave');