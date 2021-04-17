s = gets.chomp
circle_count = s[/o{3}/]
cross_count = s[/x{3}/]

if !circle_count.nil?
  puts 'o'
elsif !cross_count.nil?
  puts 'x'
else
  puts 'draw'
end
