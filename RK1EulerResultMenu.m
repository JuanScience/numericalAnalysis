function RK1EulerResultMenu(titles, table)
  clc()
  disp("****************************************************")
  disp("                  Resultados RK1")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Gráfica")
  disp("2.  Tabla")
  disp("3.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    choice = input("Ingrese un valor numérico: ");

    if strcmp(mat2str(choice), "[]") == 1
      plot(table(2:end,2)', table(2:end, 3)'), grid on;
      disp(titles);
      disp(table);
      disp("Presione una tecla para continuar...")
      pause();
      RK1EulerResultMenu(titles, table);
    endif

    switch choice
      case 0
        Inicio;
      case 1
        plot(table(2:end,2)', table(2:end, 3)'), grid on;
        RK1EulerResultMenu(titles, table)
      case 2
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        RK1EulerResultMenu(titles, table)
      case 3
        plot(table(2:end,2)', table(2:end, 3)'), grid on;
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        RK1EulerResultMenu(titles, table);
      otherwise
        printf("Escoja un valor entero entre 0 y 3. Presione una tecla.");
        pause();
        bisectionResultMenu(func, a , b, titles, table);
    endswitch
  catch err
    disp(err)
    pause()
    clear()
    Inicio
  end_try_catch
endfunction
