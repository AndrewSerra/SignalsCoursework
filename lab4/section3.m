init_bode();
global s
% enter the equation, ex: H = (1.1424/(s^2+0.6265*s+1.1424));
H = (1.1424/(s^2+0.6265*s+1.1424))*(0.6265/(s+0.6265));
% MATLAB will simplify the equation if possible
minreal(H)
%function make_bode (mag_plot, phase_plot, H, log_xmin, log_xmax, ymin, ymax)
%  inputs:
%    mag_plot, phase_plot enable plot, if both on two mag and phase will appear in same figure.
%    H is the transfer function
%    log_xmin and log_xmax sets the x range; specify in log space as 10^log_xmin and 10^log_xmax.
%    ymin and ymax set the y range; specify in dB or degrees.
make_bode('on', 'off', H, -2, 1, -60, 10);
make_bode('off', 'on', H, -2, 1, -90, 0);