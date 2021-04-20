N = gets.to_i
arr = []
arr[0] = gets.chomp.split.map &:to_i
arr[1] = gets.chomp.split.map &:to_i

sum = 0
N.times do |i|
  x = arr[0][0..i].sum + arr[1][i..N].sum
  sum = x if x > sum
end

puts sum
