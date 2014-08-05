# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
load 'lib/helpers.rb'
number = 600851475143
prime_factors = prime_factors_of(number)

puts "Prime factors of: #{number}"
puts "#{prime_factors.join(' x ')} = #{prime_factors.inject(:*)}"
puts "Largest prime factor => #{prime_factors[-1]}"
