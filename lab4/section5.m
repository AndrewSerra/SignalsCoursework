init_bode();
global s
% enter the equation, ex: H = (1.1424/(s^2+0.6265*s+1.1424));
H = (s^2/(s^2+(34.4*10^3)*s+3.94*10^9))*(s/(s+100*10^3));
% MATLAB will simplify the equation if possible
minreal(H)
%function make_bode (mag_plot, phase_plot, H, log_xmin, log_xmax, ymin, ymax)
%  inputs:
%    mag_plot, phase_plot enable plot, if both on two mag and phase will appear in same figure.
%    H is the transfer function
%    log_xmin and log_xmax sets the x range; specify in log space as 10^log_xmin and 10^log_xmax.
%    ymin and ymax set the y range; specify in dB or degrees.
make_bode('on', 'off', H, 4, 7, -40, 5);
make_bode('off', 'on', H, -4, 6, -140, 10);