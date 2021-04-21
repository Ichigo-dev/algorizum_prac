n = gets.to_i

x = []
y = []
n.times do |i|
  tmp_x, tmp_y = gets.chomp.split.map &:to_i
  x.push(tmp_x)
  y.push(tmp_y)
end

max = 0
n.times do |i|
  n.times do |j|
    j += i
    if i != j && j < n
      ans = Math.sqrt((x[j] - x[i])**2 + (y[j] - y[i])**2)
      max = ans if max < ans
    end
  end
end
puts "#{max}\n"
