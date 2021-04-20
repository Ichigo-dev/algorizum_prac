n = gets.to_i

power = 1

n.times do |i|
  power *= i + 1
  power %= 10**9 + 7
end

puts power
