function RK2EulerMenu()
  clc();
  disp("\n****************************************************")
  disp("       Método Runge Kutta Euler de segundo orden");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("\nIngrese la primer función (dy_dx) con el siguiente formato: @(x,y,z)f(x,y,z)");
    dy_dx = 0;
    while !strcmp(class(dy_dx), "function_handle")
      dy_dx = input ("Ingrese la función: ");
    endwhile

    disp("\nIngrese la segunda función (dz_dx) con el siguiente formato: @(x,y,z)f(x,y,z)");
    dz_dx = 0;
    while !strcmp(class(dz_dx), "function_handle")
      dz_dx = input ("Ingrese la función: ");
    endwhile

    x0 = input ("\nIngrese el valor inicial de x: ");
    y0 = input ("\nIngrese el valor inicial de y: ");
    z0 = input ("\nIngrese el valor inicial de z: ");

    h = 0;
    while h <= 0
      h = input ("\nIngrese el incremento: ");
    endwhile

    fin = 0;
    while fin <= 0 || mod(fin, 1) != 0
        fin = input ("\nIngrese el número de pasos: ");
    endwhile

    sign = feval(dy_dx, x0, y0, z0); # Genera error si algo no va bien
    sign = feval(dz_dx, x0, y0, z0); # Genera error si algo no va bien

    [titles, table, solution] = RK2Euler(dy_dx, dz_dx, x0, y0, z0, h, fin);

    if solution == 1
      RK2EulerResultMenu(titles, table);
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
