#PARÁMETROS
# func:   Ingresar como @(x)(función__a_evaluar)
# a:      Límite inferior para evaluar
# b:      Límite superior para evaluar

function [titles, table, solution] = bisection(func, a, b)
  error = 1;
  mnAnterior = 1;
  i = 0;
  titles = ['[-1 = i]', '[-2 = a]', '[-3 = b]', '[-4 = MN]', '[-5 = f(MN)]','[-6 = signo]', '[-7 = Error]'];
  table = [-1, -2, -3, -4, -5, -6, -7];

  while((error > (1 * 10^(-3))) &&  (i < 10000))
    if (a + b) == 0
      solution = 0;
      disp("Error no se puede calcular. Presione una tecla para continuar")
      pause();
      break;
    endif
    mn = (a + b) / 2; #cálculo del punto medio
    f_mn = feval(func, mn);
    sign = feval(func, a) * f_mn;
    if(i ~= 0)
      error = abs((mn - mnAnterior) / mn * 100); #Cálculo del error
    else
      error = 100;
    endif

    if isfinite(mn) == 0 | isfinite(f_mn) == 0 | isfinite(sign) == 0 | isfinite(error) == 0
      solution = 0;
      break;
    endif

    #Ingresa nueva fila a matriz respuesta
    newLine = [i, a, b, mn, f_mn, sign, error];
    before = table;
    table = [before; newLine];
    if (sign < 0) #evaluación del punto medio
      b = mn;
    else
      a = mn;
    endif
    mnAnterior = mn;
    i++;
  endwhile

  if error > 1e-3
    solution = 0;
  else
    solution = 1;
  endif

 endfunction
