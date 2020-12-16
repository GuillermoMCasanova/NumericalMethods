% Exercise 16

word = input('Ingrese la palabra a procesar: ', 's');
completeString = strcat(word, word);

for i = length(word)+1:-1:1
    fprintf('%s\n', string(extractBetween(completeString, i, i+length(word)-1)));
end

