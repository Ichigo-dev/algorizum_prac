H, W = gets.chomp.split.map &:to_i
s_arr = []
H.times do
  s_arr.push(gets.chomp.chars)
end


i = 0
H.times do |i|
  W.times do |j|
    next if s_arr[i][j] == '#'
    count = 0

    # 左上
    count += 1 if i - 1 >= 0 && j - 1 >= 0 && s_arr[i - 1][j - 1] == '#'
    # 上
    count += 1 if i - 1 >= 0 && s_arr[i - 1][j] == '#'
    # 右上
    count += 1 if i - 1 >= 0 && j + 1 < W && s_arr[i - 1][j + 1] == '#'
    # 左横
    count += 1 if j - 1 >= 0 && s_arr[i][j - 1] == '#'
    # 右横
    count += 1 if j + 1 < W && s_arr[i][j + 1] == '#'
    # 左下
    count += 1 if i + 1 < H && j - 1 >= 0 && s_arr[i + 1][j - 1] == '#'
    # 下
    count += 1 if i + 1 < H && s_arr[i + 1][j] == '#'
    # 右下
    count += 1 if i + 1 < H && j + 1 < W && s_arr[i + 1][j + 1] == '#'
    s_arr[i][j] = count.to_s
  end
end

s_arr.each do |s|
  puts s.join
end
