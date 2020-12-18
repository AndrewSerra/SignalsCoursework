init();

T = 2*pi;
M = 15;
t = 0:(2*pi/1000):(4*pi);

[m, cm] = create_cm_series(M, T);
[y] = cm2yt(t, T, m, cm, M);

make_plot(t, y, "Exercise 7 - Andrew Serra", "t", "y")