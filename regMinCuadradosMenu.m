function regMinCuadradosMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método regMinCuadrados");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("\nIngrese matriz de dos filas, las filas separadas por punto y coma")
    disp("y los elementos de cada fila están separados por espacios o por coma")
    disp("La primera fila corresponde a los valores de la variable independiente")
    disp("La segunda fila, los valores de f(x) o la variable dependiente: ")
    a = input ("\nIngrese matriz encerrada entre corchetes: ");

    fila = size(a, 1);
    cola = size(a, 2);

    if fila != 2 | cola < 2
      disp("La matríz ingresada debe contener mínimo dos puntos. Presione una tecla.");
      pause();
      Inicio;
    endif

    order = a(1, :);

    for i = 1:cola - 1
      if order(i) >= order(i + 1)
        disp("Los términos independientes no están en orden. Presione una tecla")
        pause();
        Inicio;
        break;
      endif
    endfor

    b = input ("\nIngrese valor de x para reemplazar en la ecuación generada por el método: ");
    n = input ("\nIngrese valor del grado del polinomio que se quiere generar: ");

    #VALIDAR ORDEN DE LOS VALORES DE LA PRIMERA FILA
    #VALIDAR QUE AL MENOS HAYAN DOS PUNTOS

    [a_n, b, table, result] = regMinCuadrados(a, b, n);

    regMinCuadradosResultMenu(a_n, b, table, result);


  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Error en el ingreso de sus valores. Presione una tecla");
    pause ();
    Inicio
  end_try_catch

endfunction
