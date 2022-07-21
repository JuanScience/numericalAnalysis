#Runge Kutta 4 (Primer Orden)

#PARÁMETROS

% f:       Ingresar como @(x,y)(función_a_evaluar)
% x0:      Valor inicial de x
% y0:      Valor inicial de y
% h:       Delta(x) o paso
% fin:     Número de veces que se hacen los pasos

function [titles, table, solution]  = RK4Orden1(f, x0, y0, h, fin)
  table = [-1, -2, -3];
  before = table;
  table = [before; 0, x0, y0];

  solution = 1;

  for i = 1: fin
    k1 = feval(f, x0, y0);
    k2 = feval(f, (x0 + h/2), (y0 + k1 * h/2));
    k3 = feval(f, (x0 + h/2), (y0 + k2 * h/2));
    k4 = feval(f, (x0 + h), (y0 + k3 * h));
    fi = (k1 + 2 * k2 + 2 * k3 + k4) / 6;
    x1 = x0 + h;
    y1 = y0 + fi * h;

    if isfinite(x1) == 0 | isfinite(y1) == 0
      solution = 0;
      break;
    endif

    newLine = [i, x1, y1];
    before = table;
    table = [before; newLine];
    x0 = x1;
    y0 = y1;
   endfor
   titles = strcat("-1[i] -2[x] -3[y]");

endfunction
