%%function for convolution on quadratic equation with real and unequal roots
%%includes complex roots case
function r1 = quad_unequalroots_conv(t, k, l, m, x1, x2)
r1 = k * 1 + m * ((exp(x2 .* t) - exp(x1 .* t))/ (x2-x1)) + l * ((x2 * exp(x2 .* t) - x1 * exp(x1 .* t))/ (x2-x1)) + k * ((x2 * x2 * exp(x2 .* t) - x1 * x1 * exp(x1 .* t))/ (x2-x1)) ;
end
