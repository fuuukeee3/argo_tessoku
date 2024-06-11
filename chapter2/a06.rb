def prefix_sum(arr)
  sums = [0]
  arr.each_with_index do |a, i|
    sums << a + sums[i]
  end

  sums
end

n, q = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

sums = prefix_sum(a)

answers = []
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  answers << sums[r] - sums[l - 1]
end

puts answers.join("\n")

p sums