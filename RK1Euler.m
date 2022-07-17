#Runge Kutta 1 (Método de Euler)

#PARÁMETROS

% f:       Ingresar como @(x,y)(función_a_evaluar)
% x0:      Valor inicial de x
% y0:      Valor inicial de y
% h:       Delta(x) o paso
% fin:     Número de veces que se hacen los pasos

function answer = RK1Euler(f, x0, y0, h, fin)
  answer = [-1, -2, -3];
  before = answer;
  answer = [before; 0, x0, y0];
  for i = 1: fin
    x1 = x0 + h;
    y1 = y0 + feval(f, x0, y0) * h;
    newLine = [i, x1, y1];
    before = answer;
    answer = [before; newLine];
    x0 = x1;
    y0 = y1;
   endfor
   titles = strcat("-1[i] -2[x] -3[y]")
   plot(answer(2:end,2)', answer(2:end, 3)'), grid on;
endfunction
