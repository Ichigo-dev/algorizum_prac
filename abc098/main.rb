n = gets.to_i
s = gets.chomp.chars

min = n
s.each.with_index do |x, i|
  a = i != n - 1 ? s[i + 1..n - 1].count('E') : 0
  b = i != 0 ? s[0..i - 1].count('W') : 0
  sum = a + b
  min = sum if sum < min
end

puts min
