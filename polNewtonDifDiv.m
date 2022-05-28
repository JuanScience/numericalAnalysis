#PARÁMETROS

% a:       matriz A (2 x n) donde la primera fila es la variable independiente
                            # la segunda, f(x) la variable dependiente
% x:       Constante para reemplazar en la ecuación generada por el método

function answer = polNewtonDifDiv(a, x)
  m = size(a, 2); #Número de columnas matriz a
  answer = a';
  titles = ["[Xi]","[f(Xi)]"];
  ec = strcat("fn(x)=", mat2str(answer(1, 2), 4));
  fnx = answer(1,2);
  for i = 1:(m - 1)
    for b = 1:m
      if (b > (m - i))
        c(b) = 0;
      else
        c(b,1) = (answer(b + 1, i + 1) - answer(b, i + 1)) / (answer(b + i, 1) - answer(b, 1));
      endif
    endfor
    answer = [answer, c];
    titles = strcat(titles, "[b", int2str(i), "]");
    ec = strcat(ec, " + (", mat2str(answer(1, i + 2), 4),")");
    aux = answer(1, i + 2);
    for z = 1:i
      ec = strcat(ec, "(x- ", mat2str(a(1, z), 4), ")");
      aux = aux * (x - a(1, z));
    endfor
    fnx = fnx + aux;
  endfor
  ec
  fnx
  titles
endfunction
