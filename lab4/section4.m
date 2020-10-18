init_bode();
global s
% enter the equation, ex: H = (1.1424/(s^2+0.6265*s+1.1424));
H = ((4.5*10^9)/(s^2+39.26*10^3*s+4.51*10^9))*((39.26*10^3)/(s+(39.26*10^3)));
% MATLAB will simplify the equation if possible
minreal(H)
%function make_bode (mag_plot, phase_plot, H, log_xmin, log_xmax, ymin, ymax)
%  inputs:
%    mag_plot, phase_plot enable plot, if both on two mag and phase will appear in same figure.
%    H is the transfer function
%    log_xmin and log_xmax sets the x range; specify in log space as 10^log_xmin and 10^log_xmax.
%    ymin and ymax set the y range; specify in dB or degrees.
make_bode('on', 'off', H, -2, 6, -20, 5);
make_bode('off', 'on', H, -4, 6, -140, 10);