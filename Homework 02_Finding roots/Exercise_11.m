% Exercise 11

% Hallar mediante el método de Newton la 
% raíz de la siguiente ecuación no lineal 
% f(x)=x^2-2*x*exp(-x)+exp(-2*x)

% Symbols
syms x;
scale = -0.5:0.1:1.5;

% Function
f = str2sym('x^2-2*x*exp(-x)+exp(-2*x)');

% Error tolerance
tol = 10^-4;

% Graphics
plot(scale, subs(f, x, scale));

% Near Value
x0 = 0.5; 

% Info
fprintf('Solving using:\n');
fprintf('Tolerance: %0.6f\tInitial Value: %0.6f\n', tol, x0);

% Solve
result = newtonRaphson(f, x0, tol);
fprintf('Answer: X = %0.6f\n', result);
