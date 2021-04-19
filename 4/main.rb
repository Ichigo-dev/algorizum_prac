N = gets.to_i

# [[ , ], [ , ]] <= 値と文字数を保存 値が同じなら文字数が多い方を選択
arr = []
N.times do
  arr.push(gets.chomp.splist)
end
