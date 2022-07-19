function falsePositionMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método Falsa posición");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    a = input ("\nIngrese el límite inferior: ");
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
      [titles, table, solution] = falsePosition(func, a, b);
      if solution == 1
        falsePositionResultMenu(func, a , b, titles, table);
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
