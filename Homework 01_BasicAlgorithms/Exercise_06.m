% Exercise 6

n = input('Ingrese el valor de N: ');
result = 1;
for i = 2:1:n
    result = result*i;
end

fprintf('%i! = %i\n', n, result);