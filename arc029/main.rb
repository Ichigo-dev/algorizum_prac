n = gets.to_i
arr = []
n.times do
  arr.push(gets.to_i)
end

min = 10**9
[0, 1].repeated_permutation(n) do |bits|
  machine1 = []
  machine2 = []
  bits.each.with_index do |bit, i|
    if bit == 0
      machine1.push(arr[i])
    else
      machine2.push(arr[i])
    end
  end
  sum = machine1.sum <= machine2.sum ? machine2.sum : machine1.sum
  min = sum if sum < min
end

puts min
