# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
winner = nil

factor = 1
largest_divisor = 20

searching = true
while searching
  winner = largest_divisor * factor
  (largest_divisor - 1).downto(1) do |i|
    if winner % i != 0
      factor += 1
      break
    end
    searching = (i != 1)
  end
end

puts "The smallest positive number that is evenly divisible by all of the numbers from 1 to #{largest_divisor} is #{winner}"

# Results
# time ruby p005_smallest_multiple.rb
# The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is XXXXXXXXX
#
# real  0m3.470s
# user  0m3.410s
# sys  0m0.050s