model HeatString
    constant Real C = 45;
    constant Real rho = 0.12;
    constant Real K = 43;
    Real[100] u;
initial equation
    u[1] = 0.0;

    for i in 2:99 loop
        u[i] = (i / 99) * 500.0;
    end for;

    u[100] = 500.0;

equation
    der(u[1]) = 0;

    for i in 2 : 99 loop
        der(u[i]) = (K / C*rho) * (u[i+1] + u[i-1] - 2 * u[i]);
    end for;

    der(u[100]) = 0;

end HeatString;
