function make_bode(mag_plot, phase_plot, H, log_xmin, log_xmax, ymin, ymax)
    global fig_num;
    figure(fig_num);
    fig_num = fig_num + 1;
    
    global options;
    options.Ylim = [ymin ymax];
    options.MagVisible = mag_plot;
    options.PhaseVisible = phase_plot;
    
    w = logspace(log_xmin, log_xmax, 1000);
    bode(H, options, w); grid on;
end