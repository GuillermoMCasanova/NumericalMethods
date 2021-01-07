% Exercise 12

% Resolver la ecuación por el método de la 
% secante x*log10(x)-10=0. Indicar los puntos 
% de partida y la tolerancia empleada.

% Symbols
syms x;
scale = 0:0.1:15;

% Function
f = str2sym('x*log10(x)-10');

% Error tolerance
tol = 10^-6;

% Graphics
plot(scale, subs(f, x, scale));

% Initial Values
x0 = 9; 
x1 = 11;

% Info
fprintf('Solving using:\n');
fprintf('Tolerance: %0.6f\tInitial Value X0: %0.6f\tInitial Value X1: %0.6f\n', tol, x0, x1);

% Solve
result = secant(f, x0, x1, tol);
fprintf('Answer: X = %0.6f\n', result);
