% Exercise 3

n = input('Ingrese el valor de N: ');

if bitand(n, 1)
    fprintf('%d es impar\n', n);
else
    fprintf('%d es par\n', n);
end