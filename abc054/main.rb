n, m = gets.chomp.split.map &:to_i

graph = []
m.times do
  tmp = gets.chomp.split.map &:to_i
  graph.append(tmp)
end

per = (0..n-1).to_a.permutation.to_a

cnt = 0

order = Array.new(n) { Array.new(n, false)}

graph.each do |a, b|
  order[a - 1][b - 1] = true
  order[b - 1][a - 1] = true
end

per = per.select { |n| n[0] == 0 }

per.each do |x|
  flag = 0
  x.each_cons(2) do |a, b|
    flag += 1 if order[a][b]
  end
  cnt += 1 if flag == n - 1
end

p cnt
