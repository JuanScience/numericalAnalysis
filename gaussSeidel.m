#PARÁMETROS

% a:       matriz A (Sin coeficientes)
% b:       Vector columna de términos independientes

function [titles, table, solution] = gaussSeidel(a, b)
  m = size(a, 2); #Número de columnas matriz a
  x = zeros (1, m); #Vector para calcular la iteración de variables
  e = ones(1, m); #Vector para calcular errores de variables
  table = [x, e];
  flag = true;
  i = 1;
  while(flag &&  (i < 10000)) #ciclo para llegar al error

    for j = 1:m #hallar el valor de x y e en la posición (j)
      x_j = b(j, 1);
      for k = 1:m
        if (j != k)
          x_j = x_j - (a(j, k) * x(k));
        endif
      endfor
      x(j) = x_j / a(j, j);
      e(j) = abs(100 * (x(j) - table(i, j)) / x(j));

      if isfinite(x(j)) == 0 | isfinite(e(j)) == 0
        solution = 0;
        flag = false;
        break;
      endif
    endfor

    table = [table; x, e];

    #Valida si todos los errores están por debajo de 1 * 10^(-3)
    ver = 0;
    for t = 1:m
      if e(t) > (1 * 10^(-3))
        ver = ver + 1;
      endif
    endfor
    if (ver == 0)
      flag = false;
    endif

    i++;
  endwhile

  #Código para crear los encabezados (titles):
  titles = "";
  for a = 1:m
    titles = strcat(titles, "[X", int2str(a), "]");
  endfor
  for a = 1:m
    titles = strcat(titles, "[E", int2str(a), "]");
  endfor

  if ver != 0
    solution = 0;
  else
    solution = 1;
  endif

endfunction
