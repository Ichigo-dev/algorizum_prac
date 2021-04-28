s = gets.chomp.chars

sum = 0

[0, 1].repeated_permutation(s.length - 1) do |bits|
  str = ''
  str << s[0]
  bits.each.with_index do |bit, i|
    if bit == 1
      str << "+#{s[i + 1]}"
    else
      str << s[i + 1]
    end
  end
  sum += str.split('+').map(&:to_i).sum
end

puts sum
