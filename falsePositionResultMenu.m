function falsePositionResultMenu(func, a, b, titles, table)
  clc()
  disp("****************************************************")
  disp("                  Resultados Falsa posición")
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
    if strcmp(mat2str(choice), "[]") == 1
      #CÓDIGO DE (TODO)
      graficar(func, a, b, 0.001)
      disp(titles);
      disp(table);
      raiz = table(end, 4);
      disp(cstrcat("\nLa raíz de la función entre los valores ", mat2str(a), " y ", mat2str(b), " es: ", mat2str(raiz)))
      disp("\nPresione una tecla para continuar...")
      pause();
      falsePositionResultMenu(func, a , b, titles, table);
    endif
    min = mat2str(a);
    max = mat2str(b);
    switch choice
      case 0
        Inicio;
      case 1
        graficar(func, a, b, 0.001)
        falsePositionResultMenu(func, a , b, titles, table);
      case 2
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        falsePositionResultMenu(func, a , b, titles, table);
      case 3
        raiz = mat2str(table(end, 4));
        disp(cstrcat("\nLa raíz de la función entre los valores ", min, " y ", max, " es: ", raiz))
        disp("\nPresione una tecla para continuar...")
        pause();
        falsePositionResultMenu(func, a , b, titles, table);
      case 4
        graficar(func, a, b, 0.001)
        disp(titles);
        disp(table);
        raiz = table(end, 4);
        disp(cstrcat("\nLa raíz de la función entre los valores ", mat2str(a), " y ", mat2str(b), " es: ", mat2str(raiz)))
        disp("\nPresione una tecla para continuar...")
        pause();
        falsePositionResultMenu(func, a , b, titles, table);
      otherwise
        printf("Escoja un valor entero entre 0 y 4. Presione una tecla.");
        pause();
        falsePositionResultMenu(func, a , b, titles, table);
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    falsePositionResultMenu(func, a , b, titles, table);
  end_try_catch
endfunction
