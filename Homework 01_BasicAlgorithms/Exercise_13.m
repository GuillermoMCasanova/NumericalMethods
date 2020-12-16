% Exercise 13

dimX = input('Ingrese la dimensión X de la matriz: ');
dimY = input('Ingrese la dimensión Y de la matriz: ');
matrix = zeros(dimX, dimY);
result = zeros(dimY, dimX);

for i = 1:1:dimX
    for j = 1:1:dimY
        matrix(i, j) = input(sprintf('Ingrese el dato [%d][%d]: ', i, j));
        result(j, i) = matrix(i, j);
    end
end

fprintf('Original:\n');
disp(matrix);
fprintf('Traspuesta:\n');
disp(result);
        