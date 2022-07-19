#Runge Kutta 2 (Método de Euler)

#PARÁMETROS

% f:       Ingresar como @(x,y)(función_a_evaluar)
% x0:      Valor inicial de x
% y0:      Valor inicial de y
% z0:      Valor inicial de z (d')
% h:       Delta(x) o paso
% fin:     Número de veces que se hacen los pasos

function answer = RK2Euler(dy_dx, dz_dx, x0, y0, z0, h, fin)
  answer = [-1, -2, -3, -4];
  before = answer;
  answer = [before; 0, x0, y0, z0];
  for i = 1: fin
    fi_y = feval(dy_dx, x0, y0, z0);
    fi_z = feval(dz_dx, x0, y0, z0);
    x1 = x0 + h;
    y1 = y0 + fi_y * h;
    z1 = z0 + fi_z * h;
    newLine = [i, x1, y1, z1];
    before = answer;
    answer = [before; newLine];
    x0 = x1;
    y0 = y1;
    z0 = z1;
   endfor
   titles = strcat("-1[i] -2[x] -3[y] -4[z]")
   hold on
   plot(answer(2:end,2)', answer(2:end, 3)'), grid on; #gráfica x vs y
   plot(answer(2:end,2)', answer(2:end, 4)'), grid on; #gráfica x vs z
   hold off
endfunction
