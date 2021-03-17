function retval = newton_func(x, f, df)
  % Implementacao do método de Newton para encontrar um zero para a funcao f.
  % x indica a aproximação inicial para o zero.
  % df indica a função que computa a derivada de f(x).
  % A função deve retornar uma raiz da equação f(x) = 0.
  
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