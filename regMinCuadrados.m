#Regresión Polinomial por Mínimos cuadrados

#PARÁMETROS

% d:       matriz d (2 x n) donde la primera fila es la variable independiente
                                 #la segunda, f(x) la variable dependiente
% v:       Constante para reemplazar en la ecuación generada por el método
% n:       Valor del grado del polinomio que se quiere generar

function [a_n, b, table, result] = regMinCuadrados(d, v, n)
  m = size(d, 2); %Número de columnas matriz a
  if (m < n + 1)
    disp("Grado del polinomio menor al número de datos. No se puede calcular");
  else
    x = d(1,1:end);
    y = d(2,1:end);

    a = ones(n + 1, n + 1);
    b = ones(n + 1, 1);
    for i = 1:n + 1
      for j = 1:n + 1
        a(i, j) = sum(x.^(i - 1 + j - 1));
      endfor
      b(i, 1) = sum(x.^(i - 1).*y);
    endfor
    a;
    b;
    a_n = (inv(a)*b)';
    table = 0;
    for i = 1:n + 1
      table = table + (a_n(i) * v ^ (i - 1));
    endfor
  endif

  y1 = ones(m, 1);
  for i = 1:m
    result = 0;
    for j = 1:n+1
      result = result + (a_n(j) * x(i)^(j - 1));
    endfor
    y1(i) = result;
  endfor

##  hold on
##  plot (x, y1, 'linewidth', 2); #gráfica
##  for i = 1:m
##    plot(x(i), y(i), '*', 'Color', 'red');
##  endfor
##  hold off

endfunction
