%% D1

p = [1 -18 23 1266 -8424 15552];
roots(p);

polyval(p,4);

%Klar

%% D2

y = [-7 4 6 7];
z = (poly(y)) %Polynomet
k = @(x) z(1)*x.^4 + z(2)*x.^3 + z(3)*x.^2 + z(4)*x + z(5);

fplot(k,[-50 50])

%Klar

%% D3

x = linspace(-100,100,1000);
y = @(x) 4*cos(2*x) + 3*exp(-0.2*x);
plot(x, y(x))
axis([0 4 -2 6])

integral(y,1.1,3.2)

%Klar

%% D4

g = @(x) (cos(exp(x)))./(1-x);
x = linspace(2,3);

plot(x,g(x))
axis([1 4 -2 10]);

lokmin = fminbnd(g,2,3)
g(lokmin)
grid on

%Klar

%% D5 
x = linspace(-10,10);

h = @(x) 3*x.^2 + x - 3*exp(-x.^2)
y = h(x)
plot(x, h(x))

min = fminbnd(h,-1,1)
minstavarde = h(min)
noll1 = fzero(h,-1)
nollstalle1 = h(noll1)
noll2 = fzero(h,1)
nollstalle2 = h(noll2)

%Klar

%% D6
v = [4 4 4 4 4 4 4];

D1 = diag(v,1);
D2 = diag(v,-1);
M = eye(8)*5;

Z = M + D1 + D2

d = det(Z);

%Klar

%% D7

m = complexmat(5, -2+i, 1-i)

%Klar

