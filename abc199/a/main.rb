a, b, c = gets.chomp.split.map &:to_i

puts a**2 + b**2 < c**2 ? 'Yes' : 'No'
