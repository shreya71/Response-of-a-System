%%function for linear equations
function r1 = linear_conv(t, l, m, r)
r1 =  l*1 + l * r *(exp(r * t)) + m * (exp(r * t)) ;
end