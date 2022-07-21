function secantMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método Secante");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    a = input ("\nIngrese el primer punto: ");
    b = a;
    while b <= a
      b = input ("\nIngrese el segundo punto: ");
    endwhile
    disp("\nIngrese la función con el siguiente formato: @(x)f(x)");
    func = 0;
    while !strcmp(class(func), "function_handle")
      func = input ("Ingrese la función: ");
    endwhile

    sign = feval(func, a) * feval(func, b); #evalúa puntos y función
    [titles, table, solution] = secant(func, a, b);
    if solution == 1
      secantResultMenu(func, titles, table);
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
