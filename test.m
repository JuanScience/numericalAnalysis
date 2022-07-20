##function test()
##  x = []
##  for i = 1:(8-1)/10:8
##    x = [x, i]
##  endfor
##endfunction

function test()

  inicio = 1;
  final = 6;

  table = [1 0 0.46 -0.05; 4 1.38 0.21 0; 6 1.8 0 0]
  m = size(table, 1); #Nümero filas
  x = [];
  y = [];


  for i = inicio:(final-inicio)/100:final
      x = [x, i];
      r = table(1, 2);
      for j = 1:(m - 1)
        aux = table(1, j + 2);
        for z = 1:j
          aux = aux * (i - table(z, 1));
        endfor
        r = r + aux;
      endfor
      y = [y, r];
    endfor
endfunction
