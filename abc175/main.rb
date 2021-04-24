n = gets.to_i
l_arr = gets.chomp.split.map &:to_i

count = 0
l_arr.each do |x|
  l_arr.each do |y|
    l_arr.each do |z|
      next if x == y || x == z || y == z
      count += 1 if x < y + z && y < z + x && z < x + y
    end
  end
end

puts count / 6
