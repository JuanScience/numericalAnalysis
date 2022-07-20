function PILagrangeResultMenu( table, ec)
  clc()
  disp("****************************************************")
  disp("                  Resultados PILagrange")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Gráfica")
  disp("2.  Valor x reemplazado")
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
        PILagrangeResultMenu( table, ec)
      case 2
        disp(table);
        disp("Presione una tecla para continuar...")
        pause();
        PILagrangeResultMenu( table, ec)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu( table, ec)
      case 4
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx)))
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu( table, ec)
      case 5
        #GRAFICAR
        disp(table);
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", mat2str(fnx)))
        disp("\nPresione una tecla para continuar...")
        pause();
        PILagrangeResultMenu( table, ec)
      otherwise
        printf("Escoja un valor entero entre 0 y 5. Presione una tecla.");
        pause();
        PILagrangeResultMenu( table, ec)
    endswitch
  catch err
    disp(err)
    PILagrangeResultMenu( table, ec)
  end_try_catch
endfunction
