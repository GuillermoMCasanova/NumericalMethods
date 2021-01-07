function [x1] = newtonRaphson(f, x0, tol)
    syms x;
    x1 = x0;
    df = diff(f);
    counter = 1;
    err = abs(subs(f, x1));

    % Validations
    if tol <= 0
        error('Tolerance value must be greater than zero.');
    end
    
    fprintf('It\tX0\tX1\tError\n');
    while err > tol
        x0 = x1;
        dfeval = subs(df, x0);
       
        if dfeval == 0
            error('Newton-Raphson method is not applicable for this case.');
        end
        
        x1 = x0 - (subs(f, x0)/dfeval);
        err = abs(subs(f, x1));
        fprintf('%i\t%0.6f\t%0.6f\t%0.6f\n', counter, x0, x1, err);
        counter = counter + 1;
    end
end