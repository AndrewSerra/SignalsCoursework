init();
disp('SECTION 2 forced response');

sigma = -4; omega = 100;
xmag = 4; xphase = 30*pi/180;

num = [ 1 ];
den = [ 2 2 0 ];

% Display the natural response
natural_resp_solver(den)

Y = forced_resp_solver(num, den, xmag, xphase, sigma, omega);
t = linspace(0, 0.5, 1000);

y_t = abs(Y) .* exp(-t) .* cos(omega.*t - xphase);

make_plot(t, y_t, 'Section 1 input', 't', 'y_t');