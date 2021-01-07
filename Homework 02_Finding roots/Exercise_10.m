% Exercise 10

% Hallar mediante el método de Newton la 
% raíces reales de la ecuación 
% f(x)=x^2+10*cos(x)

% Symbols
syms x;
scale = -4:0.1:4;

% Function
f = str2sym('x^2+10*cos(x)');

% Error tolerance
tol = 10^-6;

% Graphics
plot(scale, subs(f, x, scale));

% First solution
% Near Value
x0 = -3; 

% Info
fprintf('Solving first solution using:\n');
fprintf('Tolerance: %0.6f\tInitial Value: %0.6f\n', tol, x0);

% Solve
result = newtonRaphson(f, x0, tol);
fprintf('Answer: X1 = %0.6f\n\n', result);

% Second solution
% Near Value
x0 = -2; 

% Info
fprintf('Solving second solution using:\n');
fprintf('Tolerance: %0.6f\tInitial Value: %0.6f\n', tol, x0);

% Solve
result = newtonRaphson(f, x0, tol);
fprintf('Answer: X2 = %0.6f\n\n', result);

% Third solution
% Near Value
x0 = 3; 

% Info
fprintf('Solving first solution using:\n');
fprintf('Tolerance: %0.6f\tInitial Value: %0.6f\n', tol, x0);

% Solve
result = newtonRaphson(f, x0, tol);
fprintf('Answer: X3 = %0.6f\n\n', result);

% Second solution
% Near Value
x0 = 2; 

% Info
fprintf('Solving fourth solution using:\n');
fprintf('Tolerance: %0.6f\tInitial Value: %0.6f\n', tol, x0);

% Solve
result = newtonRaphson(f, x0, tol);
fprintf('Answer: X4 = %0.6f\n\n', result);

