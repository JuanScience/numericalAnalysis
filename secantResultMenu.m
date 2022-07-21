function secantResultMenu(func, titles, table)
  clc()
  disp("****************************************************")
  disp("              Resultados Secante")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Gráfica")
  disp("2.  Tabla")
  disp("3.  Raíz")
  disp("4.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    choice = input("Ingrese un valor numérico: ");
    raiz = mat2str(table(end, 2));

    if strcmp(mat2str(choice), "[]") == 1
      graficar(func, table(end, 2) - 5, table(end, 2) + 5, 0.01)
      disp(titles);
      disp(table);
      disp(cstrcat("\nLa raíz calculada es: ", raiz))
      disp("\nPresione una tecla para continuar...")
      pause();
      secantResultMenu(func, titles, table)
    endif

    switch choice
      case 0
        Inicio;
      case 1
        graficar(func, table(end, 2) - 5, table(end, 2) + 5, 0.01)
        secantResultMenu(func, titles, table)
      case 2
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        secantResultMenu(func, titles, table)
      case 3
        disp(cstrcat("\nLa raíz calculada es: ", raiz))
        disp("\nPresione una tecla para continuar...")
        pause();
        secantResultMenu(func, titles, table)
      case 4
        graficar(func, table(end, 2) - 5, table(end, 2) + 5, 0.01)
        disp(titles);
        disp(table);
        disp(cstrcat("\nLa raíz calculada es: ", raiz))
        disp("\nPresione una tecla para continuar...")
        pause();
        secantResultMenu(func, titles, table)
      otherwise
        printf("Escoja un valor entero entre 0 y 4. Presione una tecla.");
        pause();
        secantResultMenu(func, titles, table)
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp("Presione una tecla para continuar")
    pause()
    clear()
    Inicio
  end_try_catch
endfunction
