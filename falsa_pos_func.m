function retval = falsa_pos_func(a, b, f)
  % Implementacao do m�todo da falsa-posi��o para encontrar um zero para a funcao f.
  % [a, b] indica o intervalo considerado.
  % Implemente o m�todo dando prioridade ao intervalo mais � esquerda sempre que poss�vel.
  % A fun��o deve retornar uma raiz da equa��o f(x) = 0.
  
  stop_error = 1e-7;
  
  fda = f(a);
  fdb = f(b);
  x = a - ((fda*(b - a))/(fdb - fda));
  err = (b - a);
  while(err > stop_error)
    if(f(a)*f(x) < 0)
      b = x;
      fdb = f(b);
    else
      a = x;
      fda = f(a);
    end
    x = a - ((fda*(b - a))/(fdb - fda));
    err = abs(f(x));
  endwhile
  retval = x  
  
  
  
endfunction
