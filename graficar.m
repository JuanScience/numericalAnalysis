#PARÁMETROS

% func:   Ingresar como @(x)(función__a_graficar)
% a:      Límite inferior para graficar en el eje x
% b:      Límite superior para graficar en el eje x
% detax:  Incremento de puntos entre a y b

function graficar(func, a, b, deltax)
  x = a:deltax:b; %vector desde a hasta b con incremento deltax
  y = feval(func, x); #evaluación de la función en todos los puntos de x
  plot (x, y, 'linewidth', 2), grid on; #gráfica
 endfunction
