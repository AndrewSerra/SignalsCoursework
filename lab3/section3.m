init();

t = linspace(0, 25, 1000);
num = [ 1 ];
den = [ 2 -2 1 ];

pzmap(tf(num, den));
grid on;

% yi = impulse(tf(num, den), t);
% make_plot(t, yi, 'Section 3 - Impulse response' , 't', 'yi');