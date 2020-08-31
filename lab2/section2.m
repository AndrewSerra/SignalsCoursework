init();

x = linspace(0, 10, 1751);

num = [1 0 -16];
ynum = polyval(num, x);
den = [1 -4];
yden = polyval(den, x);
y = ynum ./ yden;

k = find(isnan(y));
y(k) = 8;
x(k)
make_plot(x, y, 'Lab 2 Section 2', 'x', 'y');