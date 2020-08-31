init();

t = linspace(0, 20, 201);
y = exp(-0.2.*t) .* cos(t);

make_plot(t, y, 'Lab 2 Section 3', 't', 'y');