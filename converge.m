function ans = converge(c)

k = 0;
z0 = c;

while abs(z0)<=2 && k<100

    z1 = z0.^2;
    z0 = z1;
    k = k + 1;
end
    ans = k;

