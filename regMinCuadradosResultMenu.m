function regMinCuadradosResultMenu(a_n, b, table, result)
  clc()
  disp("****************************************************")
  disp("                  Resultados regMinCuadrados")
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
        regMinCuadradosResultMenu(a_n, b, table, result)
      case 2
        disp(a_n);
        disp(b);
        disp("Presione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a_n, b, table, result)
      case 3
        disp(cstrcat("\nLa ecuación generada por el método es :", result))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a_n, b, table, result)
      case 4
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", table))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a_n, b, table, result)
      case 5
        #GRAFICAR
        disp(table);
        disp(cstrcat("\nLa ecuación generada por el método es :", ec))
        disp(cstrcat("\nLa ecuación evaluada en el valor ingresado es: ", table))
        disp("\nPresione una tecla para continuar...")
        pause();
        regMinCuadradosResultMenu(a_n, b, table, result)
      otherwise
        printf("Escoja un valor entero entre 0 y 5. Presione una tecla.");
        pause();
        regMinCuadradosResultMenu(a_n, b, table, result)
    endswitch
  catch err
    disp(err)
    regMinCuadradosResultMenu(a_n, b, table, result)
  end_try_catch
endfunction
