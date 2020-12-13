% Exercise 9

n = input('Ingrese el valor de N: ');
isPrime = true;

if n==1
    isPrime = false;
end

for i = 2:1:n/2
    if mod(n, i)==0
        isPrime = false;
        break;
    end
end

if isPrime
    fprintf('%i es primo\n', n);
else
    fprintf('%i no es primo\n', n);
end