function init_bode()
    clc; clear all; close all;
    
    global s;
    s = tf('s');
    
    global fig_num;
    fig_num = 1;
    
    global options;
    options = bodeoptions;
end 