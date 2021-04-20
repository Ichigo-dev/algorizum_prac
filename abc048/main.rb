a, b, x = gets.chomp.split.map &:to_i

def f(n, x)
  return 0 if n == -1
  n == 0 ? 0 : n.div(x)
end

count = f(b, x) - f(a, x)
count += 1 if a % x == 0

puts count
