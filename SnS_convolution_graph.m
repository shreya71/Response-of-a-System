%%%%%CODE FOR OUTPUT USING CONVOLUTION THEOREM%%%%%
P = input('Enter the coefficients of Q(D) and P(D): ');
%%input array in form of variables of quadratic equation
%%[a b c, k l m]
a = P(1,1);
b = P(1,2);
c = P(1,3);
k = P(2,1);
l = P(2,2);
m = P(2,3);
p = 0;
if a == 0 && b == 0
    %%constant (0*x^2 + 0*x + c)
    disp('Not a polynomial equation ');
elseif a == 0
        %%Linear Equation (bx +c = 0)
        r = -c/b;
        for t = -10:0.1:10
            if t >= 0
                %%function to obtain output from linear equations 
    s = intelinear(t, l, m, r) * 0.1 ; 
         stem(t,s);
            else
                s =intelinear(t, l, m, r) * 0 ;
                 stem(t,s);
            end        
    hold on
    p = p+s;
        end 
disp(p)
hold off
else
     N = sqrt(b*b - (4*a*c)) ;
        D = 2*a ;
        x1 = (-b + N)/ D ;
        x2 = (-b - N)/ D ;
    if x1 == x2
            r = -b/D ;
             %%function to obtain output from quadratic equation(real and equal roots) 
            for t = -10:0.1:10
                 if t >= 0
    s = equiquad(t, k, l, m, r) * 0.1 ;
    stem(t,s);
                 else     
                s = intelinear(t, l, m, r) * 0 ;
                 stem(t,s);
                 end
    hold on
    p = p+s;
             end 
disp(p)
hold off
    else 
        %%function to obtain output from quadratic equation(real and unequal roots)
        %%roots(including coplex roots case)
            for t = -10:0.1:10
                 if t >= 0
     s = quadrat(t, k, l, m, x1, x2) * 0.1 ;
    stem(t,s);
                 else
                s =intelinear(t, l, m, r) * 0 ;
                 stem(t,s);
                 end
    hold on
    p = p+s;
            end 
disp(p)
hold off
    end
end