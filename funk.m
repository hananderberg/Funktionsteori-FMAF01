%% Första summan
syms k;
symsum(((sin(2*k))/(k)),k,[1;Inf])

%% Andra summan
syms k;
symsum(((sin(2*k)^2)/(k^2)),k,[1;Inf]);

%% andra
format longG

i = 1 : 5;
theSum = sum((sin(2*k)^2)/(k^2))
