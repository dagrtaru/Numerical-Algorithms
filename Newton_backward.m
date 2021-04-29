function [y] = Newton_backward(X, Y, n, a)
  d = 0;
  for i = 1 : n - 1
    d(i, 1) = Y(i + 1) - Y(i);
  endfor
  for j = 2 : n - 1
    for i = 1 : n - j
      d(i, j) = d(i + 1, j - 1) - d(i, j - 1);
    endfor
  endfor
  y = Y(n);
  s = 1;
  q = 1;
  v = (a - X(n)) / (X(2) - X(1));
  for k = 1 : n - 1
    s = s * (v + k - 1);
    q = q * k;
    y = y + (s / q) * d(n - k, k);
  endfor
endfunction
