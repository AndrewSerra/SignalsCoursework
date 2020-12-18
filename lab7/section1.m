init();
T = 6;
%create t so it starts a 0, ends at T and has 101 points
t = 0:T/100:T;
y = zeros(size(t));
%for values of t from 0 to 2, y = -t^5
ind1 = find(t>0 & t<2);
y(ind1)=-t(ind1).^5;
%for values of t from 4.5 to 6, y = 3t
ind2 = find(t>4.5 & t<6);
y(ind2)=3*t(ind2);
make_plot(t,y,'piece-wise function','t','y');