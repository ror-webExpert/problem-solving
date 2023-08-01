# https://medium.com/ruby-daily/ruby-algorithm-questions-for-beginners-e7722e03985d
# You may not get this exact question, but there are a tonne of variations which are pretty common.
#
#   It’s also a great example of the golden rule of algorithm questions.
#
#     “If possible, use a hash table”
# - Me
#
# I joke, but it’s often true.
#
#   Instructions
# Given 2 strings, a and b, return true if they are anagrams.
#
#   Strings are anagrams if their characters can be rearranged to form each other, without adding or removing any characters.
#
#   Code
# Modify this method so it returns the desired answer.
#
#   def anagrams(a, b)
# # code
# end
# Tests



def anagrams(a, b)
  # code
  # x = {}
  # y = []
  #
  #   b.split("").map do |c|
  #   x[c] = c
  #   end
  #
  # y = a.split("").map do |c1|
  #   x.key?(c1)
  # end
  #
  # # puts y
  # if y.uniq.count > 1
  #   puts false
  # else
  #   puts true
  # end
  a_h = string_to_hash(a)
  b_h = string_to_hash(b)
  puts a_h == b_h
end

def string_to_hash(str)
  str_h = {}
  str.chars.map do |c|
    puts str_h
    if str_h.include?(c)
      str_h[c] += 1
      puts str_h
    else
      str_h[c] = 1
      puts str_h
    end
  end
  str_h
end

anagrams("dwor", "drow")
