require 'minitest/autorun'

load 'lib/helpers.rb'

class PalindromesTest < Minitest::Test
  def test_numbers_under_10_are_palindromes
    (0..9).each {|i| assert_equal true, is_palindrome?(i), "#{i} failed" }
  end
  
  def test_two_digits_palindromes
    [11,22,33,44,55,66,77,88,99].each {|i| assert_equal true, is_palindrome?(i), "#{i} failed" }
  end
  
  def test_two_digits_not_palindromes
    [10,12,23,45,89,93].each {|i| assert_equal false, is_palindrome?(i), "#{i} failed" }
  end
  
  def test_various_palindromes
    [101,898,3553,4554,67776,3213443123].each {|i| assert_equal true, is_palindrome?(i), "#{i} failed" }
  end

  def test_various_not_palindromes
    [100,110,345125,312237,9084].each {|i| assert_equal false, is_palindrome?(i), "#{i} failed" }
  end
  
  def test_closest_palindrome
    assert_equal 2,     closest_palindrome_to(1)
    assert_equal 11,    closest_palindrome_to(9)
    assert_equal 22,    closest_palindrome_to(15)
    assert_equal 99,    closest_palindrome_to(97)
    assert_equal 101,   closest_palindrome_to(99)
    assert_equal 111,   closest_palindrome_to(107)
    assert_equal 202,   closest_palindrome_to(193)
    assert_equal 808,   closest_palindrome_to(803)
    assert_equal 818,   closest_palindrome_to(809)
    assert_equal 1111,  closest_palindrome_to(1010)
  end
  
  def test_palindromes_between_1_and_50
    assert_equal [1,2,3,4,5,6,7,8,9,11,22,33,44], palindromes_in(1..50)
  end

  def test_palindromes_between_50_and_240
    assert_equal [55,66,77,88,99,101,111,121,131,141,151,161,171,181,191,202,212,222,232], palindromes_in(50..240)
  end
  
end