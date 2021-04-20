a, b, c = gets.chomp.split.map &:to_i

ans = 0

while ans <= a * b
  ans += a
  if ans % b == c
    puts 'YES'
    exit
  end
end

puts 'NO'
