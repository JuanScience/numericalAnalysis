#PARÁMETROS

% a:       matriz A (Sin coeficientes)
% b:       Vector columna de términos independientes

function answer = cramer(a, b)
  da = det(a)
  m = size(a, 2); #Número de columnas matriz a
  for i = 1:m #bucle para generar las matrices d
    d = a;
    d(:, i) = b
    D = det(d)
    answer = ['X', num2str(i), ' = ', num2str(D / da)]
  endfor
 endfunction
