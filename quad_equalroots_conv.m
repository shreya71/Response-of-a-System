%%function for quadratic equation with real and equal roots
function r1 = quad_equalroots_conv(t, k, l, m, r)
r1 =  k * 1 + ((2+(r * t))*(exp(r * t)*r)) * k + l * ((1+(r * t))*(exp(r * t))) + m * t * (exp(r * t)) ;
end