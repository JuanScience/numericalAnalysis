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
    m = size(table, 1);
    inicio = table(1, 1);
    final = table(end, 1);
    x = [];
    y = [];
    for i = inicio:(final-inicio)/100:final
      x = [x, i];
      r = table(1, 2);
      for j = 1:(m - 1)
        aux = table(1, j + 2);
        for z = 1:j
          aux = aux * (i - table(z, 1));
        endfor
        r = r + aux;
      endfor
      y = [y, r];
    endfor

    choice = input("Ingrese un valor numérico: ");

    if strcmp(mat2str(choice), "[]") == 1
      plot(x, y);
      disp(titles);
      disp(table);
      disp(cstrcat("\nLa ecuación generada por el método es :", ec))
      disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx)))
      disp("\nPresione una tecla para continuar...")
      pause();
      polNewtonDifDivResultMenu(titles, table, fnx, ec)
    endif

    switch choice

      case 0
        Inicio;
      case 1
        plot(x, y);
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 2
        disp(titles);
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp("\nPresione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 4
        disp("\nLa ecuación evaluada en el valor ingresado es: ")
        fnx
        disp("\nPresione una tecla para continuar...")
        pause();
        polNewtonDifDivResultMenu(titles, table, fnx, ec)
      case 5
        plot(x, y);
        disp(titles);
        disp(table);
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx)))
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
    disp("\nPresione una tecla para continuar...")
    pause();
    polNewtonDifDivResultMenu(titles, table, fnx, ec)
  end_try_catch
endfunction
