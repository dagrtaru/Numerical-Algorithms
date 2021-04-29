function [s] = Trapezoid(a, b, h)
  x = a + h;
  n = (b - a) / h;
  s = 0;
  y = 0;
  y(1) = 1 / (1 + a * a);
  for i = 2 : n - 1
    y(i) = 1 / (1 + x * x);
    s += 2 * y(i);
    x += h;
  endfor
  y(n) = 1 / (1 + b * b);
  s = (h / 2) * (y(1) + s + y(n));
endfunction
