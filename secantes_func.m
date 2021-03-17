function retval = secantes_func(x0, x1, f)
  % Implementacao do m�todo das secantes para encontrar um zero para a funcao f.
  % x0 e x1 indicam duas aproxima��es iniciais para o zero.
  % df indica a fun��o que computa a derivada de f(x).
  % A fun��o deve retornar uma raiz da equa��o f(x) = 0.
  
  stop_error = 1e-7;
  
  x2 = x0 - (f(x0)/((f(x1) - f(x0))/(x1 - x0)));
  err = abs(x2 - x1);
  while(err > stop_error)
    x0 = x1;
    x1 = x2;
    x2 = x0 - (f(x0)/((f(x1) - f(x0))/(x1 - x0)));
    err = abs(x2 - x1);
  endwhile
  retval = x2;
  
endfunction
