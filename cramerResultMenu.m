function cramerResultMenu(a, b)
  clc()
  disp("****************************************************")
  disp("               Resultados cramer")
  disp("Escoja uno de las opciones númericas a continuación:\n")
  disp("----------------------------------------------------")
  disp("1.  Matrices")
  disp("2.  Resultados")
  disp("3.  Todo")
  disp("0.  Salir")
  disp("----------------------------------------------------\n")

  try
    choice = input("Ingrese un valor numérico: ");

    if strcmp(mat2str(choice), "[]") == 1
      disp("Determinante de matriz a")
        da = det(a)
        m = size(a, 2); #Número de columnas matriz a
        for i = 1:m #bucle para generar las matrices d
          d = a;
          d(:, i) = b
          disp(cstrcat("DX",mat2str(i), " = "));
          D = det(d)
          answer = ['X', num2str(i), ' = ', num2str(D / da)]
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        cramerResultMenu(a, b)
    endif

    switch choice
      case 0
        Inicio;
      case 1
        disp("Determinante de matriz a")
        da = det(a)
        m = size(a, 2); #Número de columnas matriz a
        for i = 1:m #bucle para generar las matrices d
          d = a;
          d(:, i) = b
          disp(cstrcat("DX",mat2str(i), " = "));
          D = det(d)
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        cramerResultMenu(a, b)
      case 2
        da = det(a);
        m = size(a, 2); #Número de columnas matriz a
        for i = 1:m #bucle para generar las matrices d
          d = a;
          d(:, i) = b;
          D = det(d);
          answer = ['X', num2str(i), ' = ', num2str(D / da)]
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        cramerResultMenu(a, b)

      case 3
        disp("Determinante de matriz a")
        da = det(a)
        m = size(a, 2); #Número de columnas matriz a
        for i = 1:m #bucle para generar las matrices d
          d = a;
          d(:, i) = b
          disp(cstrcat("DX",mat2str(i), " = "));
          D = det(d)
          answer = ['X', num2str(i), ' = ', num2str(D / da)]
        endfor
        disp("Presione una tecla para continuar...")
        pause();
        cramerResultMenu(a, b)

      otherwise
        printf("Escoja un valor entero entre 0 y 3. Presione una tecla.");
        pause();
        cramerResultMenu(a, b)
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    printf("Presione una tecla.");
    pause();
    cramerResultMenu(a, b)
  end_try_catch
endfunction
