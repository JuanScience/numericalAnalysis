function polNewtonDifDivMenu()
  clc();
  disp("\n****************************************************")
  disp("                  Método polNewtonDifDiv");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("\nIngrese matriz de dos filas, las filas separadas por punto y coma")
    disp("y los elementos de cada fila están separados por espacios o por coma")
    disp("La primera fila corresponde a los valores de la variable independiente")
    disp("La segunda fila, los valores de f(x) o la variable dependiente: ")
    a = input ("\nIngrese matriz encerrada entre corchetes: ");

    b = input ("\nIngrese valor de x para reemplazar en la ecuación generada por el método: ");

    #VALIDAR ORDEN DE LOS VALORES DE LA PRIMERA FILA
    #VALIDAR QUE AL MENOS HAYAN DOS PUNTOS

    [titles, table, fnx, ec] = polNewtonDifDiv(a, b);
    polNewtonDifDivResultMenu(titles, table, fnx, ec);


  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Error en el ingreso de sus valores. Presione una tecla");
    pause ();
    Inicio
  end_try_catch

endfunction
