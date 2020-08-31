init();

t = linspace(0, 4*pi, 201);
w = 0.5;
phase = -60 * 2 * pi / 360;
theta = w * t + phase;
y = (exp(1j * theta) + exp(-1j * theta)) / 2;

make_plot(t, y, 'Cosine wave with 60 deg shift', 't', 'y');