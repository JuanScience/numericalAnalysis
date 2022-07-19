#PARÁMETROS

% func:       Ingresar como @(x)(función_a_evaluar)
% xi:         Punto para comenzar a evaluar la función (X_0)
% xi_1:       Punto para comenzar a evaluar la función (X_1)

function [titles, table, solution] = secant(func, xi, xi_1)
  error = 1;
  i = 0;
  table = [-1, -2, -3, -4]

  while((error > (1 * 10^(-3))) &&  (i < 50))

    f_xi = xi_1 - ( ((xi - xi_1) * feval(func, xi_1)) / (feval(func, xi) - feval(func, xi_1))); #cálculo de X_n+1

    if(i ~= 0)
      error = abs((f_xi - xi_1) / f_xi * 100); #Cálculo del error
    else
      error = 100;
    endif
    #Ingresa nueva fila a matriz respuesta
    newLine = [i, xi, f_xi, error];
    before = table;
    table = [before; newLine];

    xi = xi_1;
    xi_1 = f_xi;
    i++;
  endwhile

    if error > 1e-3
      solution = 0;
    else
      solution = 1;
    endif
  titles = ['[-1 = i]', '[-2 = Xi]', '[-3 = f(Xi)]', '[-7 = Error]']
 endfunction
