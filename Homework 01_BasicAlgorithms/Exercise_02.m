% Exercise 2

x = input('Ingrese la coordenada rectangular X: ');
y = input('Ingrese la coordenada rectangular Y: ');

fprintf('Modulo: %0.3f ul.\n', (x^2 + y^2)^0.5);
fprintf('Ángulo con el eje X: %0.3f rad.\n', atan(y/x));