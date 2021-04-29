function [x] = Regula_falsi(a, b)
  x = (a * f(b) - b * f(a)) / (f(b) - f(a));
  count = 0;
  while abs(b - a) > 0.001
    k = f(x);
    if k < 0
      a = x;
    else
      b = x;
    endif
    x = (a * f(b) - b * f(a)) / (f(b) - f(a));
    count++;
    if count > 20
      break;
    endif
  endwhile
endfunction
