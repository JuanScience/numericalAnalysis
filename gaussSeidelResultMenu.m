function gaussSeidelResultMenu(nVariables, titles, table)
  clc()
  disp("****************************************************")
  disp("               Resultados Gauss Seidel")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Tabla")
  disp("2.  Resultados")
  disp("3.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    choice = input("Ingrese un valor numérico: ");

    if strcmp(mat2str(choice), "[]") == 1
      disp(titles);
      disp(table);
      disp("\n");
      for variables = 1:nVariables
        disp(cstrcat("Variable ", mat2str(variables), " = ", mat2str(table(end, variables)) ))
      endfor
      disp("Presione una tecla para continuar...")
      pause();
      gaussSeidelResultMenu(nVariables, titles, table)
    endif

    switch choice
      case 0
        Inicio;

      case 1
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        gaussSeidelResultMenu(nVariables, titles, table)

      case 2
        for variables = 1:nVariables
          disp(cstrcat("Variable ", mat2str(variables), " = ", mat2str(table(end, variables))))
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        gaussSeidelResultMenu(nVariables, titles, table)

      case 3
        disp(titles);
        disp(table);
        disp("\n");
        for variables = 1:nVariables
          disp(cstrcat("Variable ", mat2str(variables), " = ", mat2str(table(end, variables))))
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        gaussSeidelResultMenu(nVariables, titles, table)

      otherwise
        printf("Escoja un valor entero entre 0 y 3. Presione una tecla.");
        pause();
        gaussSeidelResultMenu(nVariables, titles, table)
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    printf("Presione una tecla.");
    pause()
    clear()
    Inicio
  end_try_catch
endfunction
