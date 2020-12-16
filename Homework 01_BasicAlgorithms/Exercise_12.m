% Exercise 12

n = input('Ingrese el valor de N: ');
m = zeros(1, n);
r = 0;

for i = 1:1:n
    m(1, i) = input(sprintf('Ingrese el elemento %i: ', i));
    r = r + m(1, i);
end

fprintf('Vector: \n');
disp(m);
fprintf('Media: %0.3f\n', r/n);
