r, c = gets.chomp.split.map &:to_i
sx, sy = gets.chomp.split.map &:to_i
gx, gy = gets.chomp.split.map &:to_i

map = []
r.times do |i|
  map[i] = gets.chomp.chars
end

dist = Array.new(r){ Array.new(c, -1) }

queue = [[sx - 1, sy - 1]]

dist[sx - 1][sy - 1] = 0

until queue.empty?
  x, y = queue.shift
  if x > 0 && dist[x - 1][y] == -1 && map[x - 1][y] == '.'
    dist[x - 1][y] = dist[x][y] + 1
    queue << [x - 1, y]
  end
  if y > 0 && dist[x][y - 1] == -1 && map[x][y - 1] == '.'
    dist[x][y - 1] = dist[x][y] + 1
    queue << [x, y - 1]
  end
  if y < c - 1 && dist[x][y + 1] == -1 && map[x][y + 1] == '.'
    dist[x][y + 1] = dist[x][y] + 1
    queue << [x, y + 1]
  end
  if x < r - 1 && dist[x + 1][y] == -1 && map[x + 1][y] == '.'
    dist[x + 1][y] = dist[x][y] + 1
    queue << [x + 1, y]
  end
end

puts dist[gx - 1][gy - 1]
