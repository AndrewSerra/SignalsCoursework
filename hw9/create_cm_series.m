function [m, cm] = create_cm_series(M, T)
% fill in values for A and cm
% ind1 used to for cm(0)
    m = - M : M;

    %exercise 4
    %A = -4.80;
    %cm = A * 1j * cos(m.*pi).*((pi*m).^2-10) ./ m.^3;
    %excercise 5
    %A = -2.30;
    %cm = A * 1j * cos(m.*pi) .* ((pi.*m).^2-10) ./ m.^3;
    %excercise 7
    cm = -(((-1).^m)+1)./(2*pi*((m.^2)-1));
    
    %excercise 4, 5
    %ind1 = find(m == 0);
    %cm(ind1) = 0;
    
    %excercise 7
    cm(m==1) = 1j/4;
    cm(m==-1) = conj(cm(m==1));
end