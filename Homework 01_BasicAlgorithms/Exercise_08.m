% Exercise 8

n = input('Ingrese el número de elementos a ingresar: ');
fprintf('Ingrese los valores uno a uno:\n');
values = zeros(1, n);

for i = 1:1:n
    values(1, i) = input('>> ');
end

fprintf('Orden ascendente: ');
disp(sort(values));
fprintf('Orden descendente: ');
disp(sort(values, 'descend'));

