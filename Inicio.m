function Inicio()
  clc()
  disp("\n****************************************************")
  disp("                  MENÚ PRINCIPAL");
  disp("Escoja uno de los métodos númericos a continuación:\n")
  disp("----------------------------------------------------")
  disp("                 Métodos cerrados")
  disp("----------------------------------------------------")
  disp("1.  Bisección")
  disp("2.  Falsa Posición")
  disp("----------------------------------------------------")
  disp("                 Métodos abiertos")
  disp("----------------------------------------------------")
  disp("3.  Newton Raphson")
  disp("4.  Punto Fijo")
  disp("5.  Secante")
  disp("----------------------------------------------------")
  disp("        Solución de sistemas de ecuaciones")
  disp("----------------------------------------------------")
  disp("6.  Cramer")
  disp("7.  Gauss Seidel")
  disp("----------------------------------------------------")
  disp("                 Ajuste de curvas")
  disp("----------------------------------------------------")
  disp("8.  Interpolación de Newton en diferencias divididas")
  disp("9. Polinomio de Interpolación de Lagrange")
  disp("10. Regresión polinomial por mínimos cuadrados")
  disp("----------------------------------------------------")
  disp("                  Solución de EDO")
  disp("----------------------------------------------------")
  disp("11. Runge Kutta (Euler Primer grado)")
  disp("12. Runge Kutta (Euler Segundo grado)")
  disp("13. Runge Kutta (Tercer orden)")
  disp("14. Runge Kutta (Cuarto orden)")
  disp("----------------------------------------------------")
  disp("0.  Salir")
  disp("****************************************************")

  try
    choice = input ("\nEscoja un número: ");

    switch choice
      case 0
        last_words;
      case 1
        bisectionMenu
      case 2
        falsePositionMenu
      case 3
        newtonRaphsonMenu
      case 4
        fixedPointMenu
      case 5
        secantMenu
      case 6
        printf("Choice is 6\n");
      case 7
        gaussSeidelMenu
      case 8
        polNewtonDifDivMenu
      case 9
        printf("Choice is 9\n");
      case 10
        printf("Choice is 10\n");
      case 11
        printf("Choice is 11\n");
      case 12
        printf("Choice is 12\n");
      case 13
        printf("Choice is 13\n");
      case 14
        printf("Choice is 14\n");
      case 15
        printf("Choice is 15\n");
      otherwise
        printf("Choice is other than 1...15\n");
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Solo se aceptan valores enteros entre el 1 y el 15\n\nPresione una tecla");
    pause ();
    Inicio;
  end_try_catch

endfunction

