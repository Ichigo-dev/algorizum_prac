a, b, c, d = gets.chomp.chars.map &:to_i

op = ['+', '-']

op.each do |x|
  op.each do |y|
    op.each do |z|
      ans = a
      ans = x == '+' ? ans + b : ans - b
      ans = y == '+' ? ans + c : ans - c
      ans = z == '+' ? ans + d : ans - d
      if ans == 7
        puts "#{a}#{x}#{b}#{y}#{c}#{z}#{d}=7"
        exit
      end
    end
  end
end
