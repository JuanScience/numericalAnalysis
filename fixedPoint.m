#PARÁMETROS

% func:   Ingresar como @(x)(función__a_evaluar)
% a:      Punto para comenzar a evaluar la función (X_0)

function [titles, table, solution]= fixedPoint(func, a)
  error = 1;
  i = 0;
  table = [-1, -2, -3, -4]

  while((error > (1 * 10^(-3))) &&  (i < 10000))
    f_a = feval(func, a); #cálculo de X_n+1
    if(i ~= 0)
      error = abs((f_a - a) / f_a * 100); #Cálculo del error
    else
      error = 100;
    endif
    #Ingresa nueva fila a matriz respuesta
    newLine = [i, a, f_a, error];
    before = table;
    table = [before; newLine];

    a = f_a;
    i++;
  endwhile

    if error > 1e-3
    solution = 0;
  else
    solution = 1;
  endif

  titles = ['[-1 = i]', '[-2 = a]', '[-3 = f(a)]', '[-7 = Error]']
 endfunction
