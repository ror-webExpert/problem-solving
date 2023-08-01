# https://medium.com/ruby-daily/ruby-algorithm-questions-for-beginners-e7722e03985d
# Questions 3: Find the added word
# Instructions:
#   Given 2 sentences as strings, s1 and s2, where s2 contains one more word than the first, return the added word.
#
#   Code
# def word_added(s1, s2)
#   # code
# end
# def word_added(s1, s2)
#   string_one = s1.split(" ")
#   string_two = s2.split(" ")
#   add_word("test", string_one,string_two)
# end
#
# def add_word(new, st1,st2)
#   st1 = st1.push(new)
#   st2 = st2.insert(st2.count-1, new)
#   puts st1.join(" ")
#   puts st2.join(" ")
# end

def word_added(s1, s2)
  arr1 = s1.split(' ')
  arr2 = s2.split(' ')
  h1 = arr_to_hash(arr1)
  h2 = arr_to_hash(arr2)

 return   puts (h2.to_a - h1.to_a).to_h.keys[0]
end
def arr_to_hash(arr)
  h = {}
  arr.each do |x|
    if h.include?(x)
      h[x] += 1
    else
      h[x] = 1
    end
  end
  h
end

word_added("fer bn test new", "test bn  wer dfd dfd")
