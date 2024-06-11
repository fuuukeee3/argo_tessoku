def prefix_sum(arr)
  sums = [[0, 0]]
  arr.each_with_index do |a, i|
    if a == 1
      sums << [sums[i][0] + 1, sums[i][1]]
    else
      sums << [sums[i][0], sums[i][1] + 1]
    end
  end

  sums
end

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

sums = prefix_sum(a)

q = gets.chomp.to_i
answers = []
q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  win = sums[r][0] - sums[l - 1][0]
  lose = sums[r][1] - sums[l - 1][1]
  
  if win == lose
    puts "draw"
  elsif win > lose
    puts "win"
  else
    puts "lose"
  end
end
