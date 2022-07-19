function RK1EulerMenu()
  clc();
  disp("\n****************************************************")
  disp("       Método Runge Kutta Euler de primer orden");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("\nIngrese la función con el siguiente formato: @(x,y)f(x,y)");
    func = 0;
    while !strcmp(class(func), "function_handle")
      func = input ("Ingrese la función: ");
    endwhile

    x0 = input ("\nIngrese el valor inicial de x: ");
    y0 = input ("\nIngrese el valor inicial de y: ");

    h = 0;
    while h <= 0
      h = input ("\nIngrese el incremento: ");
    endwhile

    fin = 0;
    while fin <= 0 || mod(fin, 1) != 0
        fin = input ("\nIngrese el número de pasos: ");
    endwhile

    sign = feval(func, x0, y0); # Genera error si algo no va bien

    [titles, table, solution] = RK1Euler(func, x0, y0, h, fin);

    if solution == 1
      RK1EulerResultMenu(titles, table);
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
