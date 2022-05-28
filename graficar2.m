#PARÁMETROS

% func:   Ingresar como @(x)(función__a_graficar)
%func2:
% a:      Límite inferior para graficar en el eje x
% b:      Límite superior para graficar en el eje x
% detax:  Incremento de puntos entre a y b

function graficar2(func, func2, a, b, deltax)


##  #Trazamos los ejes
  hold on

  x = a:deltax:b; %vector desde a hasta b con incremento deltax
  y = feval(func, x); #evaluación de la función en todos los puntos de x
  plot (x, y, 'linewidth', 2); #gráfica


  z = feval(func2, x); #evaluación de la función en todos los puntos de x
  plot (x, z, 'linewidth', 2); #gráfica
##  minx = min(x);
##  maxx = max(x);
##  miny = min(y);
##  maxy = max(y);
##  plot([minx, maxx], [0, 0], 'k', 'linewidth', 1);
##  plot([0, 0], [miny, maxy], 'k', 'linewidth', 1);
  hold off

 endfunction
