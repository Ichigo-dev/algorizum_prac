n = gets.to_i
a = gets.chomp.split.map &:to_i
b = gets.chomp.split.map &:to_i

a_max = a.max
b_min = b.min

ans = b_min - a_max + 1
puts ans >= 0 ? ans : 0
