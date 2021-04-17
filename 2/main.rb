N = gets.to_i
s = gets.chomp.chars
t = ''

s.each do |x|
  t.delete!(x)
  t = t + x
end

puts t
