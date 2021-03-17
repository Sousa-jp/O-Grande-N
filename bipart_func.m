function retval = bipart_func(a, b, f)
  % Implementacao do m�todo da biparticao para encontrar um zero para a funcao f.
  % [a, b] indica o intervalo considerado.
  % Implemente o m�todo dando prioridade ao intervalo mais � esquerda sempre que poss�vel.
  % A fun��o deve retornar uma raiz da equa��o f(x) = 0.
  
  stop_error = 1e-7;
  
  x = (a + b)/2;
  err = (b - a);
  while(err > stop_error)
    if (f(a)*f(x) <= 0)
      b = x;
    else 
      a = x;
    end
    x = (a + b)/2
    err = abs(b - a);
  endwhile
  retval = x;
  
endfunction
