function fixedPointMenu()
  clc();
  disp("\n****************************************************")
  disp("                 Método Punto fijo");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    a = input ("\nIngrese el valor de X0: ");
    disp("\nIngrese la función x = g(x) con el siguiente formato: @(x)f(x)");
    func = 0;
    while !strcmp(class(func), "function_handle")
      func = input ("Ingrese la función: ");
    endwhile
    disp("\nIngrese la función f(x) original con el siguiente formato: @(x)f(x)");
    G_func = 0;
    while !strcmp(class(G_func), "function_handle")
      G_func = input ("Ingrese la función: ");
    endwhile

    [titles, table, solution] = fixedPoint(func, a);
    if solution == 1
      fixedPointResultMenu(func, G_func, titles, table);
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
