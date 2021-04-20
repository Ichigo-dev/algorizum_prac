N = gets.to_i

btns = []
N.times do
  btns.push(gets.to_i)
end

count = 0
i = 1
N.times do 
  i = btns[i - 1]
  count += 1
  if i == 2
    puts count
    exit
  end
end

puts -1
