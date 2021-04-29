function [s] = Simpson(a, b, h)
  n = (b - a) / h;
  x = a;
  s = 0;
  odd = 0;
  even = 0;
  y = 0;
  for i = 1 : n
    y(i) = 1 / (1 + x * x);
    x += h;
  endfor
  for i = 2 : n - 1
    if (mod(i, 2) == 0)
      even += y(i);
    else
      odd += y(i);
    endif
  endfor
  s = (h / 3) * (y(1) + 4 * odd + 2 * even + y(n));
endfunction
