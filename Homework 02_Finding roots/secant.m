function [x2] = secant(f, x0, x1, tol)
    syms x;
    err = 1/0;
    counter = 1;
    
    % Validations
    if tol <= 0
        error('Tolerance value must be greater than zero.');
    elseif x1<=x0
        error('X1 must be greater than x0.');
    elseif subs(f, x0)*subs(f, x1)>0
        error('Secant method is not applicable for this case.'); 
    end
    
    fprintf('It\tX0\tX1\tX2\tError\n');

    while err>tol
        x2 = x1 - ((subs(f, x1)*(x0-x1))/(subs(f, x0) - subs(f, x1)));
        err = abs(subs(f, x2));
        fprintf('%d\t%0.6f\t%0.6f\t%0.6f\t%0.6f\n', counter, x0, x1, x2, err);
        x0 = x1;
        x1 = x2;
        counter = counter + 1;
    end
end