%% D1

yprime = @(t, y) 5*t + 1.3.^t - 3*y^2
[t y] = ode45(yprime,[1 5],3);

plot(t,y);

z = y(length(y));

%Klar

%% D2

hold on

x = [ 0.000 1.000 2.000 3.000 4.000 5.000 ];
y = [ 3.749 4.689 6.273 5.897 6.381 7.003 ];

%Plotta mätpunkterna
plot(x, y, 'm:+')
axis ([-10 10 0 10]);

%Plotta polynom 
z = polyfit(x,y,4);
p = 4;
k = @(x) z(1)*x.^(p) + z(2)*x.^(p-1) + z(3)*x.^(p-2) + z(4)*x.^(p-3) + z(5);

fplot(k, [-10 10])

%Minsta kvadratmetoden
t = polyfit(x,y,1);
m = poly2sym(t);
fplot(m, [-10 10], 'b')

%Klar

%% D3

x = [ 0.10 0.20 0.30 0.40 0.50 0.60 0.70 0.80 0.90 1.00 1.10 1.20 1.30 1.40 1.50 ];
y = [ 1.59 1.71 1.99 2.31 2.48 2.43 2.68 2.71 3.00 2.54 3.11 2.77 3.11 3.18 2.90 ];
y1 = exp(y);
%Skriver om sambandet till e^(y(x)) = a+b*x

%Leder till att b = 12.237331410836683
%Leder till att a = 4.645069121910412
%Rätt enligt facit!

p = polyfit(x,y1,1);

f = polyval(p,x);
r = poly2sym(p)
plot(x,y1,'o',x,f,'-')
legend('mätpunkter', 'rät linje')


%Klar

%% D4

hold on

v = csvread('race.txt');
size(v);
v(1);
v(450);

t = [0.001:(40/6000):40]';

plot(t,v,'*')
axis([0 40 0 150]) %Flertalet värden som sticker ut

%Klar

%% D5:1

% Sätt alla 100-värden till 0
v > 80;
z = find(v > 80);
v(find(v > 80))

v(v > 80) = 0;

plot(t,v,'*');
axis([0 40 0 150]);

%Klar

%% D5:2
% Sätt alla 100-värden till närmast tidigare värde

k = find(v > 80);
v(k) = v(k - 1);

plot(t,v,'*');
axis([0 40 0 150]);

[M,I] = max(v) %Max är 69.880662000000001

%Klar

%% D6

v = csvread('race.txt');
t = linspace(0,40,6000);
s = trapz(t,v) % Beräknar tillryggdalagda sträckan
vmedel = s./40 

%Klar

%% D7

v = csvread('const_accel.txt');
size(v);
v(1);
v(450);

t = [0.001:(5/750):5]';

plot(t,v,'+')

%Klar

%% D8

hold on

plot(t,v,'+')
p = polyfit(t,v,1)
m = poly2sym(p);
fplot(m, [-10 10], 'm')

% v(t) = at + v0
% leder till att a = 1.587044403884601 och v0 = 3.576966986323951

%Klar

%% D9

Ft = @(v) (4*1171.42)/0.3515 - ((0.24*1.29*2.4*v.^2)/2)

Ft(0)
Ft(30)

% Klar

%% D10

vprime = @(t,v) F(v)/m;
m = 2107.98;

[t v] = ode23(vprime, [0 5],0);
p = polyfit(t,v,1); %minsta kvadrat
polyval(p,3) % amax = 18,8544

% Klar













