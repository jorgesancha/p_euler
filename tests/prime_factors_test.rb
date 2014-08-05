require 'minitest/autorun'

load 'lib/helpers.rb'

class PrimeFactorsTest < Minitest::Test
  def test_prime_factors_of_9
    assert_equal [3,3], prime_factors_of(9)
  end

  def test_prime_factors_of_18
    assert_equal [2,3,3], prime_factors_of(18)
  end

  def test_prime_factors_of_42
    assert_equal [2,3,7], prime_factors_of(42)
  end

  def test_prime_factors_of_13195
    assert_equal [5,7,13,29], prime_factors_of(13195)
  end

  def test_prime_factors_of_various_numbers
    assert_equal 13195, prime_factors_of(13195).inject(:*)
    assert_equal 893844, prime_factors_of(893844).inject(:*)
  end
end
