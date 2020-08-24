init();

t = 0:0.2:2*pi;
w = 4;
y = (exp(1j*(w*t)) - exp(-1j*(w*t))) / (2j);

make_plot(t, y, 'Section 4', 't', 'y');