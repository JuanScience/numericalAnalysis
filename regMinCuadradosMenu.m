function regMinCuadradosMenu()
  clc();
  disp("\n****************************************************")
  disp("         Método Regresión por mínimos cuadrados");
  disp("Ingrese los valores solicitados:\n")
  disp("----------------------------------------------------")
  try
    disp("\nIngrese matriz de dos filas, las filas separadas por punto y coma")
    disp("y los elementos de cada fila están separados por espacios o por coma")
    disp("La primera fila corresponde a los valores de la variable independiente")
    disp("La segunda fila, los valores de f(x) o la variable dependiente: ")
    d = input ("\nIngrese matriz encerrada entre corchetes: ");

    fila = size(d, 1);
    cola = size(d, 2);

    if fila != 2 | cola < 2
      disp("La matríz ingresada debe contener mínimo dos puntos. Presione una tecla.");
      pause();
      Inicio;
    endif

    order = d(1, :);

    for i = 1:cola - 1
      if order(i) >= order(i + 1)
        disp("Los términos independientes no están en orden. Presione una tecla")
        pause();
        Inicio;
        break;
      endif
    endfor

    v = input ("\nIngrese valor de x para reemplazar en la ecuación generada por el método: ");

    n = 0;
    while n <= 0 || mod(n, 1) != 0
        n = input ("\nIngrese valor del grado del polinomio que se quiere generar: ");
    endwhile

    m = size(d, 2); %Número de columnas matriz d
    if (m < n + 1)
      disp("Grado del polinomio menor al número de datos. No se puede calcular");
      disp ("Presione una tecla");
      pause ();
      Inicio;
    endif

    [a, b, a_n, func, eval, x1, y1, x, y] = regMinCuadrados(d, v, n);

    regMinCuadradosResultMenu(a, b, a_n, func, eval, x1, y1, x, y);

  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Error en el ingreso de sus valores. Presione una tecla");
    pause()
    clear()
    Inicio
  end_try_catch

endfunction
