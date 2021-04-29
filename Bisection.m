function [x] = Bisection(a, b)
  x = (a + b) / 2;
  count = 0;
  while abs(b - a) > 0.001
    k = (x * x * x) - (3 * x) + 1;
    if k < 0
      a = x;
    else
      b = x;
    endif
    x = (a + b) / 2;
    count++;
    if count > 20
      break;
    endif
  endwhile
endfunction
