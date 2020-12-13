% Exercise 10

n = input('Ingrese el valor de N: ');
x = input('ingrese el valor de X: ');
result = 0;

for i = 1:1:n
    result = result + ((-1)^(i+1))*((x^i)/(i));
end

fprintf('Result: %0.3f\n', result);