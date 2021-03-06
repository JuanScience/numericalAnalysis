#PARÁMETROS

% func:       Ingresar como @(x)(función_a_evaluar)
% der_func:   Ingresar como @(d)(función_derivada_a_evaluar)
% xi:         Punto para comenzar a evaluar la función (X_0)

function [titles, table, solution] = newtonRaphson(func, der_func, xi)
  error = 1;
  i = 0;
  table = [-1, -2, -3, -4, -5];

  while((error > (1 * 10^(-3))) &&  (i < 10000))

    f_xi = feval(func, xi); #cálculo de f_xi
    derfxi = feval(der_func, xi); #cálculo de f'_xi
    f_xi_1 = xi - (f_xi / derfxi); #cálculo de X_n+1
    if(i ~= 0)
      error = abs((f_xi_1 - xi) / f_xi_1 * 100); #Cálculo del error
    else
      error = 100;
    endif
    #Ingresa nueva fila a matriz respuesta
    newLine = [i, xi, f_xi, derfxi, error];
    before = table;
    table = [before; newLine];

    xi = f_xi_1;
    i++;
  endwhile
  if error > 1e-3
    solution = 0;
  else
    solution = 1;
  endif
  titles = ['[-1 = i]', '[-2 = Xi]', '[-3 = f(Xi)]', "[-4 = f'(Xi)]" '[-5 = Error]'];
 endfunction
