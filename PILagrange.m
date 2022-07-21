#PARÁMETROS

% a:       matriz A (2 x n) donde la primera fila es la variable independiente
                            # la segunda, f(x) la variable dependiente
% x:       Constante para reemplazar en la ecuación generada por el método

function [table, ec] = PILagrange(a, x)
  m = size(a, 2); #Número de columnas matriz a
  table = 0;
  ec = strcat("fn", int2str(m - 1), "(x)=");
  for i = 1:m
    li = 1;
    litxt = "";
    liDenominador = 1;
    for b = 1:m
      if (b != i)
        li = li * (x - a(1, b)) / (a(1, i) - a(1, b));
        litxt = strcat(litxt, "(x-", mat2str(a(1, b)),")");
        liDenominador = liDenominador * (a(1, i) - a(1, b));
      endif
    endfor
    table = table + (a(2, i) * li);
    if ((i != 1) && (a(2, i) / liDenominador > 0))
      ec = strcat(ec, "+");
    endif
    ec = strcat(ec, mat2str(a(2, i) / liDenominador, 4), litxt);
  endfor
  ec;
endfunction
