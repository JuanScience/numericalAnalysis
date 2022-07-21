function Inicio()
  clc()
  clear()
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
  disp("9.  Polinomio de Interpolación de Lagrange")
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
        cramerMenu
      case 7
        gaussSeidelMenu
      case 8
        polNewtonDifDivMenu
      case 9
        PILagrangeMenu
      case 10
        regMinCuadradosMenu
      case 11
        RK1EulerMenu
      case 12
        RK2EulerMenu
      case 13
        RK4Orden1Menu
      case 14
        RK4Orden2Menu
      otherwise
        printf("Escoja números entre 1...14\n");
    endswitch
  catch err
    disp(err)
    warning(err.identifier, err.message);
    disp ("Solo se aceptan valores enteros entre el 1 y el 14\n\nPresione una tecla");
    pause()
    clear()
    Inicio;
  end_try_catch

endfunction

