def fibs(n)
  fib = []
  fib << 0
  if n == 1
    fib
  elsif n == 2
    fib << 1
  else
    fib << 1
    (n - 2).times do
      next_fib = fib[-2] + fib[-1]
      fib << next_fib
    end
  end
  p fib
end

fibs(8)
