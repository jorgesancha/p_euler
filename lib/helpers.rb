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

def is_palindrome?(number)
  return false if number < 0
  return true if number < 10
  candidate = number.to_s
  digits = candidate.size
  
  is_palindrome = true
  (0..digits/2 - 1).each do |i|
    if candidate[i] != candidate[-1-i]
      is_palindrome = false
      break
    end
  end
  is_palindrome
end

def palindromes_in(given_range)
  palindromes = []
  
  palindromes << given_range.first if is_palindrome?(given_range.first)

  i = closest_palindrome_to(given_range.first)
  while (i <= given_range.last)
    palindromes << i
    i = closest_palindrome_to(i)
  end
  palindromes
end

def closest_palindrome_to(number)
  return 0 if number < 0
  
  candidate = number.succ
  until (is_palindrome?(candidate)) do
    candidate = candidate.succ
  end
  candidate
end