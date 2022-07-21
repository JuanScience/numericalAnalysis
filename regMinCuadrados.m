#Regresión Polinomial por Mínimos cuadrados

#PARÁMETROS

% d:       matriz d (2 x n) donde la primera fila es la variable independiente
                                 #la segunda, f(x) la variable dependiente
% v:       Constante para reemplazar en la ecuación generada por el método
% n:       Valor del grado del polinomio que se quiere generar

function [a, b, a_n, func, eval, x1, y1] = regMinCuadrados(d, v, n)
  m = size(d, 2); %Número de columnas matriz
  x = d(1,1:end); #Vector x
  y = d(2,1:end); #Vector y

  a = ones(n + 1, n + 1); #Matriz A
  b = ones(n + 1, 1); # Vector columna B
  for i = 1:n + 1
    for j = 1:n + 1
      a(i, j) = sum(x.^(i - 1 + j - 1));
    endfor
    b(i, 1) = sum(x.^(i - 1).*y);
  endfor

  a_n = (inv(a)*b)'; # Vector fila con los coeficientes de la función
  eval = 0;        # Resultado de la función evaluada en el valor v
  func = cstrcat("f", mat2str(n),"(x) = ");
  for i = 1:n + 1
    eval = eval + (a_n(i) * v ^ (i - 1));
    if a_n(i) >= 0
      sign = " + ";
    else
      sign = "";
    endif
    func = cstrcat(func, sign, mat2str(a_n(i),4),"x^", mat2str(i - 1) );
  endfor

  x1 = ones(1, 100);
  y1 = ones(1, 100);
  inicio = d(1, 1);
  final = d(1, end);
  for i = inicio:(final-inicio)/100:final
    result = 0;
    for j = 1:n + 1
      result = result + (a_n(j) * i^(j - 1));
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
