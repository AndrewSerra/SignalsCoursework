init();

t = linspace(0, 20, 201);
y = exp(-0.2.*t) .* cos(t);

make_plot(t, y, 'Lab 2 Section 3', 't', 'y');

conj(2+2j)*abs(2*exp(1j*1.2)) + (real(-1+3j)/imag(4.924+0.868j))