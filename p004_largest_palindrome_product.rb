# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
load 'lib/helpers.rb'

winner = nil
all_palindromes = palindromes_in(100*100..999*999).reverse

all_palindromes.each do |candidate|
  999.downto(100) do |divisor|
    next unless candidate % divisor == 0
    other_factor = candidate / divisor
    if other_factor.to_s.size == 3
      winner = candidate
      puts "#{divisor} x #{other_factor} = #{divisor * other_factor}"
      break
    elsif other_factor.to_s.size > 3
      #Since divisors go down, the other factor goes up. No need to continue once it reaches 4 digits
      break
    end
  end
  break if winner
end

puts "The largest palindrome made from the product of two 3-digit numbers is #{winner}"

# Results
# time ruby p004_largest_palindrome_product.rb
# XXX x YYY = XXXXXX
# The largest palindrome made from the product of two 3-digit numbers is XXXXXX
#
# real  0m1.227s
# user  0m1.182s
# sys  0m0.040s

# Potential Improvements
# - Probably calculating all_palindromes in a range is overkill. Would be more efficient to find the candidates one by one from the top
# - Probably no need to go from 999 down_to 100 everytime - it should stop once it sees no two factors of 3 digits will do
