init_bode();
global s;
%TWO EXAMPLES ARE GIVEN
% Example 1: using constants
%   first the constants are defined 
K=25; z=0.07; p=0.07; wn=5; zeta=0.2;
%   next the equation is entered
Av = K*(s+z)/((s+p)*(s^2+2*zeta*wn*s+wn^2));
% MATLAB will simplify the equation if possible
minreal(Av)
%function make_bode (mag_plot, phase_plot, H, log_xmin, log_xmax, ymin, ymax)
%  inputs:
%    mag_plot, phase_plot enable plot, if both on two mag and phase will appear in same figure.
%    H is the transfer function
%    log_xmin and log_xmax sets the x range; specify in log space as 10^log_xmin and 10^log_xmax.
%    ymin and ymax set the y range; specify in dB or degrees.
make_bode('on', 'off', Av, -2, 3, -60, 20);
make_bode('off', 'on', Av, -2, 3, -180, 0);
% Example 2: just entering the equations
Av = 8*(s+0.25)/(s+3);
minreal(Av)
make_bode('on', 'off', Av, -2, 3, -20, 20);
make_bode('off', 'on', Av, -2, 3, 0, 90);