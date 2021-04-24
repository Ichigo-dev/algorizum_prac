k, s = gets.chomp.split.map &:to_i

count = 0
(s + 1).times do |i|
  next if i > k
  (s - i + 1).times do |j|
    next if j > k || s - i - j > k
    count += 1
  end
end

puts count
