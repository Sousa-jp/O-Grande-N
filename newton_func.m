function retval = newton_func(x, f, df)
  % Implementacao do m�todo de Newton para encontrar um zero para a funcao f.
  % x indica a aproxima��o inicial para o zero.
  % df indica a fun��o que computa a derivada de f(x).
  % A fun��o deve retornar uma raiz da equa��o f(x) = 0.
  
  stop_error = 1e-7;
  
  xk = x - (f(x)/df(x));
  err = abs(xk - x)
  while(err > stop_error)
    x = xk;
    xk = x - (f(x)/df(x));
    err = abs(xk - x);
  endwhile
  retval = xk;  
  
endfunction