#PARÁMETROS

% a:       matriz A (2 x n) donde la primera fila es la variable independiente
                            # la segunda, f(x) la variable dependiente
% x:       Constante para reemplazar en la ecuación generada por el método

function [titles, table, fnx, ec] = polNewtonDifDiv(a, x)
  m = size(a, 2); #Número de columnas matriz a
  table = a';
  titles = ["[Xi]","[f(Xi)]"];
  ec = strcat("fn(x)=", mat2str(table(1, 2), 4));
  fnx = table(1, 2);
  for i = 1:(m - 1)
    for b = 1:m
      if (b > (m - i))
        c(b) = 0;
      else
        c(b,1) = (table(b + 1, i + 1) - table(b, i + 1)) / (table(b + i, 1) - table(b, 1));
      endif
    endfor
    table = [table, c];
    titles = strcat(titles, "[b", int2str(i), "]");
    ec = strcat(ec, " + (", mat2str(table(1, i + 2), 4),")");
    aux = table(1, i + 2);
    for z = 1:i
      ec = strcat(ec, "(x- ", mat2str(a(1, z), 4), ")");
      aux = aux * (x - a(1, z));
    endfor
    fnx = fnx + aux;
  endfor

  if isfinite(fnx) == 0
    disp ("No existe solución.\n\nPresione una tecla");
    pause()
    clear()
    Inicio;
  endif

endfunction
