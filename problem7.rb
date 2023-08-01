# When calculating the sum of prime numbers, you first have to identify the prime numbers within an array. You then have to add all of these prime numbers together. In Ruby, you can call an expression that selects the prime numbers from an array and then use the “reduce” expression to add them together.


def sum_of_prime_number(n)
  prime = []
  sum = 0
  (1..n).map do |digit|
    if is_prime?(digit)
      prime.push(digit)
      sum = sum + digit
    end
  end
  puts "prime number: #{prime}"
  puts "prime number sum with built nmber: #{prime.sum}"
  puts "sum: #{sum}"
end

def is_prime?(n)
  (2..Math.sqrt(n)).each do |s|
    return false if n%s == 0
  end
end

sum_of_prime_number(99)
