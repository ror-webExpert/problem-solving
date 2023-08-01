# https://medium.com/ruby-daily/ruby-algorithm-questions-for-beginners-e7722e03985d
# Question 1: FizzBuzz
# The classic FizzBuzz question. Though I’ve never been asked it in an actual interview, it’s about as easy as algorithm questions get.
#
#   Instructions:
#   Given n, return a list of all integers from 1 through n.
#   If an integer is divisible by 3, return “Fizz” instead of the integer.
#   If an integer is divisible by 5, return “Buzz” instead of the integer.
#   If an integer is divisible by 3 and 5, return “FizzBuzz” instead of the integer.
#   Code:
#   Copy/paste this into your favorite code editor, and fill in the method to return the desired solution.
#
#   def fizzbuzz()
# # code
# end
#

def fizzbuzz(n)
  puts "here"
  (1..n).each do |d|
    if d%3==0 && d%5==0
      puts "#{d} : FizzBuzz "
    elsif d%3 == 0
      puts "#{d} : Fizz "
    elsif d%5==0
      puts "#{d} : Buzz "
    end
  end
end

fizzbuzz(23)
