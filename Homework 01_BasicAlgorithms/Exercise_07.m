% Exercise 7

n = input('Ingrese el valor de N: ');

% Serie 1
fprintf('Sumatoria 1: %i\n', n^2);

% Serie 2
result = 0; 
for i = 1:1:n
    result = result + ((-1)^i)*(1/i);
end
fprintf('Sumatoria 2: %0.3f\n', result);
    
% Serie 3
result = 0;
sign = 1;
for i = 2:1:n+1
    result = result + ((-1)^i)*fibonacci(i);
    sign = 1 - sign;
end
fprintf('Sumatoria 3: %i\n', result);

% Serie 4
sign = 0;
result = 0;
for i = 1:2:2*n-1
    result = result + ((-1)^sign)*(1/factorial(i));
    sign = 1 - sign;
end
fprintf('Sumatoria 4: %0.3f\n', result);
