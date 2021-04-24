n = gets.to_i
s = gets.chomp
q = gets.to_i

q.times do
  t, a, b = gets.chomp.split.map &:to_i
  if t == 1
    tmp = s[a - 1]
    s[a - 1] = s[b - 1]
    s[b - 1] = tmp
  else
    mae, usiro = s.scan(/.{1,#{n}}/)
    s[0..n-1] = usiro
    s[n..2*n-1] = mae
  end
end

puts s
