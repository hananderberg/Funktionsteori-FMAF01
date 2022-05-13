%% H1

z = 0.5 + 0.5i
z = z * z
z = z * z 
z = z * z
z = z * z

%Klar

%% H2

converge(1.1)

%Klar

%% H3

m = complexmat(5, -2+i, 1-i);
v = arrayfun(@converge, m);

image(v)

%Klar

%% H4

m2 = complexmat(1000, -2+i, 1-i);
v2 = arrayfun(@converge, m2);

image(v2)

%Klar

%% H5

v3 = arrayfun(@converge2, m2);

image(v3);

m3 = complexmat(1000, -0.7+0.7i, -0.5+0.6i);
v4 = arrayfun(@converge2, m3);

image(v4)


