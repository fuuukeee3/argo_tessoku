def prefix_sum(arr)
  sums = [0]
  arr.each_with_index do |a, i|
    sums << a + sums[i]
  end

  sums
end

h, w = gets.chomp.split(" ").map(&:to_i)
grid = []

h.times do
  grid << gets.chomp.split(" ").map(&:to_i)
end

sums = []
grid.each do |g|
  sums << prefix_sum(g)
end

q = gets.chomp.to_i
q.times do
  a, b, c, d = gets.chomp.split(" ").map(&:to_i)
  total = 0
  ((a-1)...c).each do |i|
    total += sums[i][d] - sums[i][b-1]
  end
  puts total
end


