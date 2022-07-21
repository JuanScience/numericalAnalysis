function regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
  clc()
  disp("****************************************************")
  disp("     Resultados Regresión por mínimos cuadrados")
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
    m = size(x, 2);
    choice = input("Ingrese un valor numérico: ");

    if strcmp(mat2str(choice), "[]") == 1
      hold on
        plot (x1, y1, 'linewidth', 2); #gráfica
        for i = 1:m
          plot(x(i), y(i), '*', 'Color', 'red');
        endfor
      hold off
      disp("La matriz A queda así: ");
      disp(a);
      disp("\nEl vector columna B queda así: ");
      disp(b);
      disp("\nEl vector con los coeficientes de la ecuación es: ");
      disp(a_n);
      disp(cstrcat("\nLa ecuación generada por el método es :", func))
      disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(eval)))
      disp("\nPresione una tecla para continuar...")
      pause();
      regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
    endif

    switch choice
      case 0
        Inicio;
      case 1
        hold on
          plot (x1, y1, 'linewidth', 2); #gráfica
          for i = 1:m
            plot(x(i), y(i), '*', 'Color', 'red');
          endfor
        hold off
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
      case 2
        disp("La matriz A queda así: ");
        disp(a);
        disp("\nEl vector columna B queda así: ");
        disp(b);
        disp("\nEl vector con los coeficientes de la ecuación es: ");
        disp(a_n);
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", func))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
      case 4
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(eval)))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
      case 5
        hold on
          plot (x1, y1, 'linewidth', 2); #gráfica
          for i = 1:m
            plot(x(i), y(i), '*', 'Color', 'red');
          endfor
        hold off
        disp("La matriz A queda así: ");
        disp(a);
        disp("\nEl vector columna B queda así: ");
        disp(b);
        disp("\nEl vector con los coeficientes de la ecuación es: ");
        disp(a_n);
        disp(cstrcat("\nLa ecuación generada por el método es :", func))
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(eval)))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
      otherwise
        printf("Escoja un valor entero entre 0 y 5. Presione una tecla.");
        pause();
        regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y)
    endswitch
  catch err
    disp(err)
    disp("Presione un tecla para continuar.")
    pause()
    Inicio;
  end_try_catch
endfunction
