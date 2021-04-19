a, b, c, d = gets.chomp.split.map &:to_i

if b < c || d < a
  puts 0
elsif a < c && b < d
  puts b - c
elsif a <= c && d <= b
  puts d - c
elsif c < a && d < b
  puts d - a
elsif c <= a && b <= d
  puts b - a
end
