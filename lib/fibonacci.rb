def fibs(number)
  fib = []
  fib << 0
  if number == 1
    fib
  elsif number == 2
    fib << 1
  else
    fib << 1
    (number - 2).times do
      fib << (fib[-2] + fib[-1])
    end
  end
  p fib
end

def fibs_rec(number)
  puts "This was printed recursively"
  return [0] if number == 1
  return [0, 1] if number == 2

  fibs_arr = fibs_rec(number - 1)
  fibs_arr << (fibs_arr[-2] + fibs_arr[-1])
end

p fibs_rec(4)
