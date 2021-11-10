epsilon_r = 4.4;
% Relative dielectric constant 

%% Dims of the TL
h = 1.5 * 10^-3; 
% height of the line (1.5 mm)
w = 0.3 * 10^-2;
% width of the line (0.3 cm = 3 x 10^-2 m)
s = w/h;

%% Compute x & y
x = 0.56 * ( (  (epsilon_r - 0.9) / (epsilon_r + 3) )^0.05 )
y = 1 + 0.02* log( ( (s^4) + 3.7 * (10^-4) * (s^2) )/( (s^4) + 0.43) ) + 0.05 * log( 1 + (1.7 * (10^-4) * (s^3) ) )

%% Compute effective epsilon 
xy = x*y;
epsilon_eff = ( (epsilon_r + 1)/2 ) + ( ( (epsilon_r - 1)/2 ) * ( (1 + 10/s)^(-1*xy) ) )

%% compute t and Z_0
t = (30.67/s)^0.75
Z_0 = (60/sqrt(epsilon_eff)) * log( (6 + (2*pi - 6)*exp(-t))/(s) + sqrt(1+4/s^2) )

%% theoretical velocity
u_phase = (3*10^8)/sqrt(epsilon_eff)