function newtonRaphsonMenu()
  clc();
  disp("\n****************************************************")
  disp("                 Método Newton Raphson");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    a = input ("\nIngrese el valor de X0: ");
    disp("\nIngrese la función con el siguiente formato: @(x)f(x)");
    func = 0;
    while !strcmp(class(func), "function_handle")
      func = input ("Ingrese la función: ");
    endwhile
    disp("\nIngrese la función derivada con el siguiente formato: @(x)f(x)");
    der_func = 0;
    while !strcmp(class(der_func), "function_handle")
      der_func = input ("Ingrese la función: ");
    endwhile

    [titles, table, solution] = newtonRaphson(func, der_func, a);
    if solution == 1
      newtonRaphsonResultMenu(func, titles, table);
    else
      disp("El método no converge. Presione una tecla")
      pause()
      Inicio
    endif

  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Error en el ingreso de sus valores. Presione una tecla");
    pause()
    clear()
    Inicio
  end_try_catch

endfunction
