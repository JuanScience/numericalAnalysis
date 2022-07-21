function gaussSeidelMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método Gauss Seidel");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("La matriz aumentada debe ser cuadrada sin contar")
    disp("términos independientes y encerrada en corchetes [].")
    disp("Cada término separado por coma o espacio")
    disp("Cada fila separada por punto y coma (;)");
    a = input ("\nIngrese la matriz aumentada sin términos independientes: ");

    fila = size(a, 1);
    cola = size(a, 2);

    if fila != cola | fila < 2
      disp("La matríz ingresada debe ser cuadrada y mayor a 2x2. Presione una tecla.");
      pause();
      Inicio;
    endif

    disp("\nEl vector de términos independientes debe ser del mismo tamaño")
    disp("de las filas de la matriz aumentada y encerrado en corchetes [].")
    disp("Cada término separado por punto y coma (;)")
    b = input ("\nIngrese el vector de términos independientes: ");

    filb = size(b, 1);
    colb = size(b, 2);

    if  filb != fila | colb != 1
      disp("No es un vector de términos independientes");
      pause();
      Inicio;
    endif

    [a, b] = diagonalDominante(a, b); #Verifica y transforma a diagonalDominante

    disp("Las matrices ingresadas quedan así: ")
    disp(a);
    disp("");
    disp(b);
    disp("Presione una tecla para continuar.");
    pause();

    [titles, table, solution] = gaussSeidel(a, b);

    if solution == 1
      gaussSeidelResultMenu(fila, titles, table);
    else
      disp("El método no converge. Presione una tecla")
      pause()
      Inicio
    endif

  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Error en el ingreso de sus valores. Presione una tecla");
    pause ();
    Inicio
  end_try_catch

endfunction
