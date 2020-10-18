init();
disp('example 1: has single real and imaginary roots');
den = [1 4 4 8];
natural_resp_solver(den);

disp('example 2: has repeated real roots');
den = [1 2 1];
natural_resp_solver(den);