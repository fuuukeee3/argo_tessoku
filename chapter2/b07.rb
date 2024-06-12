def prefix_sum(arr)
  sums = [0]
  arr.each_with_index do |a, i|
    sums << a + sums[i]
  end

  sums
end

t = gets.chomp.to_i
n = gets.chomp.to_i

sabun = Array.new(t + 1) { 0 }

n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  sabun[l] += 1
  sabun[r] -= 1
end

sums = prefix_sum(sabun)
puts sums[1..-2].join("\n")