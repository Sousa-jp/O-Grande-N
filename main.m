method = input("");
func_idx = input("");
func = -1;
d_func = -1;

if func_idx == 0
  func = @fx0;
  d_func = @dfx0;
elseif func_idx == 1
  func = @fx1;
  d_func = @dfx1;
elseif func_idx == 2
  func = @fx2;
  d_func = @dfx2;
endif

if method == 0 
  a = input("");
  b = input("");
  x = bipart_func(a, b, func);  
elseif method == 1
  a = input("");
  b = input("");
  x = falsa_pos_func(a, b, func);
elseif method == 2
  a = input("");
  x = newton_func(a, func, d_func);
elseif method == 3
  a = input("");
  b = input("");
  x = secantes_func(a, b, func);
end
  
printf("%.6f", x);