#Runge Kutta 2 (Método de Euler)

#PARÁMETROS

% dy_dx:   Ingresar como @(x,y,z)(primer función_a_evaluar)
% dz_dx:   Ingresar como @(x,y,z)(segunda función_a_evaluar)
% x0:      Valor inicial de x
% y0:      Valor inicial de y
% z0:      Valor inicial de z (d')
% h:       Delta(x) o paso
% fin:     Número de veces que se hacen los pasos

function [titles, table, solution] = RK2Euler(dy_dx, dz_dx, x0, y0, z0, h, fin)
  table = [-1, -2, -3, -4];
  before = table;
  table = [before; 0, x0, y0, z0];

  solution = 1;

  for i = 1: fin
    fi_y = feval(dy_dx, x0, y0, z0);
    fi_z = feval(dz_dx, x0, y0, z0);
    x1 = x0 + h;
    y1 = y0 + fi_y * h;
    z1 = z0 + fi_z * h;

    newLine = [i, x1, y1, z1];

    if isfinite(x1) == 0 | isfinite(y1) == 0 | isfinite(z1) == 0
      solution = 0;
      break;
    endif

    before = table;
    table = [before; newLine];
    x0 = x1;
    y0 = y1;
    z0 = z1;
   endfor
   titles = strcat("-1[i] -2[x] -3[y] -4[z]")

endfunction
