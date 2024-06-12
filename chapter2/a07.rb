def prefix_sum(arr)
  sums = [0]
  arr.each_with_index do |a, i|
    sums << a + sums[i]
  end

  sums
end

d = gets.chomp.to_i
n = gets.chomp.to_i

sabun = Array.new(d + 2) { 0 }

n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  sabun[l] += 1
  sabun[r + 1] -= 1
end

days = prefix_sum(sabun)
puts days[2..-2].join("\n")
