def is_prime?(n)
  #checking divisibility between 2 and √n
  return false if n < 2
  return true if n == 2

  is_prime = true
  (2..Math.sqrt(n).ceil).each do |i|
    if n % i == 0
      is_prime = false
      break
    end
  end

  is_prime
end

18 - 2
   - 9 - 3
       - 3

def prime_factors_of(number)
  prime_factors = []

  divisor = 2
  while true do
    if is_prime?(divisor) && number % divisor == 0
      prime_factors << divisor
      number = number / divisor

      if is_prime?(number)
        prime_factors << number
        break
      end

    else
      divisor += 1
    end
  end

  prime_factors
end
