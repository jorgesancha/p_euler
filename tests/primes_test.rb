require 'minitest/autorun'

load 'lib/helpers.rb'

class PrimesTest < Minitest::Test
  def test_2_is_prime
    assert_equal true, is_prime?(2)
  end

  def test_primes_are_primes
    [3,5,7,11,13,67,109,859,6709,26699,413557].each do |i|
      assert_equal true, is_prime?(i)
    end
  end

  def test_composites_are_not_primes
    [4,6,9,27,99].each do |i|
      assert_equal false, is_prime?(i), "#{i} failed"
    end
  end

  def test_numbers_under_2_are_not_prime
    [-10,-1,0,1].each do |i|
      assert_equal false, is_prime?(i)
    end
  end

end
