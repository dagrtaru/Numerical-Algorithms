function [c] = Lagrange(X, Y, n, x)
  y = 0;
  for i = 1 : n
    p = 1;
    q = 1;
    for j = 1 : n
      if i != j
        p = p * (x - X(j));
        q = q * (X(i) - X(j));
      endif
    endfor
    y = y + (p / q) * Y(i);
  endfor
  c = y;
endfunction
