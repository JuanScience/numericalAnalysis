function PILagrangeResultMenu(a, table, ec)
  clc()
  disp("****************************************************")
  disp("                Resultados PILagrange")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Gráfica")
  disp("2.  Valor x reemplazado")
  disp("3.  Ecuación Solución")
  disp("4.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    x = [];
    y = [];
    inicio = a(1, 1);
    final = a(1, end);
    for i = inicio:(final-inicio)/100:final
      x = [x, i];
      y = [y, PILagrange(a, i)];
    endfor

    choice = input("Ingrese un valor numérico: ");
    if strcmp(mat2str(choice), "[]") == 1
      plot(x, y);
      disp("\nLa ecuación evaluada en el valor ingresado es: ");
      disp(table)
      disp(cstrcat("\nLa ecuación generada por el método es :", ec))
      disp("\nPresione una tecla para continuar...")
      pause();
      PILagrangeResultMenu(a, table, ec)
    endif
    switch choice
      case 0
        Inicio;
      case 1
        plot(x, y);
        PILagrangeResultMenu(a, table, ec)
      case 2
        disp("\nLa ecuación evaluada en el valor ingresado es: ");
        disp(table)
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu(a, table, ec)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu(a, table, ec)
      case 4
        plot(x, y);
        disp("\nLa ecuación evaluada en el valor ingresado es: ");
        disp(table)
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu(a, table, ec)
      otherwise
        printf("Escoja un valor entero entre 0 y 4. Presione una tecla.");
        pause();
        PILagrangeResultMenu(a, table, ec)
    endswitch
  catch err
    disp(err)
    printf("Presione una tecla.");
    pause()
    clear()
    Inicio
  end_try_catch
endfunction
