function bisectionMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método Bisección");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try

    a = Inf;
    while (isfinite(a) == 0)
      a = input ("\nIngrese el límite inferior: ");
    endwhile

    b = a;
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
    clear()
    Inicio
  end_try_catch

endfunction
