function [A_diag_dom, B] = diagonalDominante(a, b)
  [row, col] = size(a);

  Diag = diag(a); # Se extrae la diagonal
  A_mod = a - Diag.*eye(row); # A_mod es la misma matriz con ceros en la diagonal

  for i = 1:row
    A_sum_row(i) = sum(abs(A_mod(i,:)));    # Calcula la suma por filas sin la diagonal
    A_sum_col(i) = sum(abs(A_mod(:,i)));    # Calcula la suma por columnas sin la diagonal
  endfor

  # Se verifica si la matriz es diagonalmente dominante
  if (all(A_sum_row(:) < abs(Diag(:))) == true && all((A_sum_col(:)) < abs(Diag(:))) == true)
    disp('La matriz es diagonalmente dominante\n')
  elseif A_sum_row(:) < abs(Diag(:))
    disp('La matriz es diagonalmente dominante por filas\n')
  elseif A_sum_col(:) < abs(Diag(:))
    disp('La matriz es diagonalmente dominante por columnas\n')
  else
    result = false;
  endif

  # Se intenta convertir la matriz en una diagonalmente dominante
  if exist('result','var')
    [max_val_row, max_pos_row] = max(abs(a));
    if length(unique(max_pos_row)) ~= length(max_pos_row)
      A_diag_dom = a;
      B = b;
      disp('La matriz no es diagonalmente dominante \n')
    else
      for i = 1:row
        A_diag_dom(i,:) = a(max_pos_row(i),:);
        B(i, 1) = b(max_pos_row(i));
      endfor
      disp('La matriz se ha intentado reordenar\n')
    endif
  endif
endfunction
