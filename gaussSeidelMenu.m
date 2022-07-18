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

    while b <= a

      b = input ("\nIngrese el límite superior: ");
    endwhile
    disp("\nIngrese la función con el siguiente formato: @(x)f(x)");
    func = 0;
    while !strcmp(class(func), "function_handle")
      func = input ("Ingrese la función: ");
    endwhile

    sign = feval(func, a) * feval(func, b);

    if(sign < 0)
      [titles, table, solution] = bisection(func, a, b);
      if solution == 1
        bisectionResultMenu(func, a , b, titles, table);
      else
        disp("El método no converge. Presione una tecla")
        pause()
        Inicio
      endif

    else
      disp("No existen raices entre los valores ingresados. Presione una tecla")
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
