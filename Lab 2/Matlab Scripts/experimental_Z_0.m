reference_point = 38.4
% d_min = linspace(0, 20, 41)
d_min = 32.9
d_min = (6)*(10^-2)
lambda = 0.145
abs_gamma = 0.2425934462
z0 = 50

theta = 3*pi + (4*pi*d_min)/lambda

gamma = abs_gamma * exp(i*theta)

zl = -z0 * (gamma + 1)/(gamma-1)
abs(zl)


