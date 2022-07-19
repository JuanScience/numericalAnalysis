function polNewtonDifDivResultMenu(titles, table, fnx, ec)
  clc()
  disp("****************************************************")
  disp("                  Resultados polNewtonDifDiv")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Gráfica")
  disp("2.  Tabla")
  disp("3.  EcuaciónSolución")
  disp("4.  Solución")
  disp("5.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    choice = input("Ingrese un valor numérico: ");

    switch choice
      case 0
        Inicio;
      case 1
        a = table(1, 1);
        b = table(end, 1);
        #GENERAR VECTORES X Y Y PARA PLOT Y GENERAR PLOT
        #graficar(a, b, (b - a)/100)
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 2
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", ec)
        disp("\nPresione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 4
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx))
        disp("\nPresione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 5
        #GRAFICAR
        disp(titles);
        disp(table);
        disp(cstrcat("\nLa ecuación generada por el método es :", ec)
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx))
        disp("\nPresione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      otherwise
        printf("Escoja un valor entero entre 0 y 5. Presione una tecla.");
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
    endswitch
  catch err
    disp(err)
    polNewtonDifDivResultMenu(titles, table, fnx, ec)
  end_try_catch
endfunction
