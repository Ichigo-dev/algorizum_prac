h, w = gets.chomp.split.map &:to_i

map = []
black_count = 0
h.times do 
  tmp = gets.chomp.chars
  black_count += tmp.count('#')
  map << tmp
end

queue = [[0, 0]]
dist = Array.new(h) { Array.new(w, -1) }
dist[0][0] = 0

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
  if x < h - 1 && dist[x + 1][y] == -1 && map[x + 1][y] == '.'
    dist[x + 1][y] = dist[x][y] + 1
    queue << [x + 1, y]
  end
  if y < w - 1 && dist[x][y + 1] == -1 && map[x][y + 1] == '.'
    dist[x][y + 1] = dist[x][y] + 1
    queue << [x, y + 1]
  end
end

if dist[h - 1][w - 1] == -1
  p -1
else
  p h * w - (dist[h - 1][w - 1] + 1 + black_count)
end
