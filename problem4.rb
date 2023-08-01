# Write a function that will find all the anagrams of a word from a list. You will be given two inputs: a word and an array of words. You should return an array of all the anagrams, or an empty array if there are none. For example:
#                                                                                                                                                                                                                                anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
# Read The Problem: The question is asking us to find all anagrams for a given word from another list of words. An anagram is a word that is composed of the same letters as the given word.
#
#   Understand what is required for the inputs and outputs: They are giving us two inputs, a string, and an array of strings. They want us to return values from the array in a new array.
#
#     Identify in plain english/pseudo code what steps will be needed: This is the tricky part. First, we know we need to iterate through the array of potential anagrams and compare them to the target word. If they are an anagram, we will put those words into a new array. Since we know that the anagrams will be composed of the same letters just in different order, we need to find a way compare just the letters, without order. Sorting comes to mind for that.
#
#     Map the sudo code to ruby processes and concepts: For the iterator, we are selecting elements from an array so let's use select. For our boolean statement, we want to compare the sorted target word with the sorted element in the array. To sort, we want to sort by chars, so we can use .chars and .sort. If they are equal, then select that element. .chars will treat a string like an array, and .sort sorts it by the character values.

def anagram(word, words)
  sorted_target_word = word.chars.sort
  words.select { |word| sorted_target_word == word.chars.sort}
end

anagram("sadji", ["sajidS","DSFS", "SDS"])
