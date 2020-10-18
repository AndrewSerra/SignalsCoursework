init();
disp('SECTION 1 example 1 forced response');

sigma = -1; omega = 10;
xmag = 2; xphase = 5*pi/180;

num = [ 5 0 ];
den = [1 4 4 8];

Y = forced_resp_solver(num, den, xmag, xphase, sigma, omega);
t = linspace(0, 5, 1000);

y_t = abs(Y) * exp(sigma * t) .* cos(omega * t - xphase);

make_plot(t, y_t, 'Section 1 input', 't', 'y_t');