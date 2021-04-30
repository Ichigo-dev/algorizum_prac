h, w, n = gets.chomp.split.map &:to_i

map = []
sx = 0
sy = 0

h.times do |i|
  tmp = gets.chomp.chars
  sx, sy = i, tmp.index('S') unless tmp.index('S').nil?
  map << tmp
end

count = 0
goal = 1

while goal <= n
  queue = [[sx, sy]]
  dist = Array.new(h) { Array.new(w, -1) }
  dist[sx][sy] = 0
  until queue.empty?
    x, y = queue.shift
    if map[x][y] == goal.to_s
      p goal
      count += dist[x][y]
      sx = x
      sy = y
      goal += 1
      break
    end
    if x > 0 && dist[x - 1][y] == -1 && map[x - 1][y] != 'X'
      dist[x - 1][y] = dist[x][y] + 1
      queue << [x - 1, y]
    end

    if x < h - 1 && dist[x + 1][y] == -1 && map[x + 1][y] != 'X'
      dist[x + 1][y] = dist[x][y] + 1
      queue << [x + 1, y]
    end

    if y > 0 && dist[x][y - 1] == -1 && map[x][y - 1] != 'X'
      dist[x][y - 1] = dist[x][y] + 1
      queue << [x, y - 1]
    end

    if y < w - 1 && dist[x][y + 1] == -1 && map[x][y + 1] != 'X'
      dist[x][y + 1] = dist[x][y] + 1
      queue << [x, y + 1]
    end
  end
end

p count
