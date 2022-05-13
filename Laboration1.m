%% Komplexa tal

a = 3 + 2i;
b = 5 - 1;
x = a * b


%% Funktioner

g = @(x) exp(-0.1*x) .*cos(x);
x = linspace(0, 10);
y = g(x);
plot(y);

%% D8

h = 1e-6;
deriv = @(f,x) (f(x+h) - f(x))/h;

%% Plotta g och dess derivata

g = @(x) exp(-0.1*x) .*cos(x);
x = linspace(0, 10);
y = g(x);
plot(y);

hold on

h = 1e-6;
deriv = @(f,x) (f(x+h) - f(x))/h;
t = deriv(f,x);
plot(t,'g:+');

title('Funktionen och dess derivata')
legend('funktion', 'derivata')
print('funktionsbild','-dpng')

%% D10

y0 = deriv(g,x);
y1 = exp(-0.1*x) .*cos(x) - 0.1*exp(-0.1*x) .*sin(x);
y2 = -0.1*exp(-0.1*x) .*cos(x) - exp(-0.1*x) .*sin(x);
y3 = -0.1*exp(-0.1*x) .*cos(x) - 0.1*exp(-0.1*x) .*sin(x);

d1 = y1 - y0;
d2 = y2 - y0;
d3 = y3 - y0;

norm(d1)
norm(d2)
norm(d3)

%% Matriser

M = eye(5)*7 
Z = 4*ones(5,3);


%% D12

A = [2 4 3;1 3 -2;9 15 18];
b = [-172; -116; -708];
x = A\b;

%% D13

A = [1 1 -1; 2 1 1; 4 3 -1];
Y = det(A);

B = [1 1 -1; 2 1 1; 4 3 -1]
b = [2;3;4]
m = B\b;


