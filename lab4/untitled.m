init_bode();

global s;
H = 4 / ((s+5)*(s+90));


make_bode('on', 'off', H, -1, 4, -95, -35);
make_bode('off', 'on', H, -1, 4, -190, 10); 