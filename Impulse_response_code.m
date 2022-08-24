%%%%%GENERAL CODE FOR IMPULSE RESPONSE%%%%%
%%input coefficients of quadratic equation as matrix elements 
P = input('Enter the coefficients of Q(D) and P(D): ');
%%[a b c, k l m]
a = P(1,1);
b = P(1,2);
c = P(1,3);
k = P(2,1);
l = P(2,2);
m = P(2,3);
if a == 0 && b == 0
    %%constant (0*x^2 + 0*x + c)
    disp('Not a polynomial equation ');
elseif a == 0
    for t = 0:0.1:10 
        %%Linear Equation (bx +c = 0)
        r = -c/b;
        %%zero input response
        z =  exp(r*t) ;
        %%u gives the impulse response 
            if t == 0
            u = l * 1 + l*(z * r) + m*z ;
            else
                u = l*(z * r) + m*z ;
            end
            disp(u)
        %%graph for above impulse response
        stem(t,u);
        hold on
    end
        hold off
    else
        %%Quadratic equation
        N = sqrt(b*b - (4*a*c)) ;
        D = 2*a ;
        x1 = (-b + N)/ D ;
        x2 = (-b - N)/ D ;
        %%case for quadratic equation with real and equal roots
        if( x1 == x2)
             for t = 0:0.1:10 
            r = -b/D ;
             %%zero input response
            z = t .* (exp(r .* t));
            d2 = ((r * r * z) + 2 * r * (exp(r .* t)));
            d1 = ((r * z)+(exp(r .* t))) ;
            %%impulse response and it's graph
                if t == 0
            u = k * 1 + k .* d2 + l .* d1 + m .* z ;
                else
                    u = k .* d2 + l .* d1 + m .* z ;
                end
                disp(u)
            stem(t,u)
            hold on
            end
            hold off
            %%case for quadratic equation with real and unequal roots
            %%roots(including complex roots case)
        else
             for t = 0:0.1:10
                  %%zero input response
                z = (exp(x2 .* t) - exp(x1 .* t))/ (x2-x1) ;
                d1 = (x2 * exp(x2 .* t) - x1 * exp(x1 .* t))/ (x2-x1) ;
                d2 = (x2 * x2 * exp(x2 .* t) - x1 * x1 * exp(x1 .* t))/ (x2-x1) ;
                %%impulse response and it's graph
                    if t == 0
                u = k * 1 + k .* d2 + l .* d1 + m .* z ;
                    else
                        u = k .* d2 + l .* d1 + m .* z ;
                    end
                    disp(u)
                stem(t,u)
                hold on
             end
        hold off
        end
end
