% Exercise 11

n = input('Ingrese el valor de N: ');
x = input('Ingrese el valor de X: ');

result = 0;

numerator = 1;
sign = 0;
for i = 1:2:2*n
    numerator = numerator * i;
    result = result + (x^i)*(((-1)^sign)*((numerator^2)/factorial(i+1)));
    sign = 1 - sign;
end

fprintf('Resultado: %0.3f\n', result);