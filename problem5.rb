# 1. Numbers greater than 5
# This problem involves finding the number of integers with a value greater than 5. In Ruby speak, you could put it like this: Given an array, count how many items are greater than 5.
#
#   To solve this, you begin by outlining the logic, then translating it into code. An array is a collection of data.
#
#   For example:
#
#         Array = [17, 7, 3, 6, 10, 1]

def greater_than_five(n)
  num = []
  n.map do |d|
    num.push(d) if d >= 5
  end
  return num
end

a = greater_than_five([6,8,2,3,5,78,9,65,86,1,2,0,4])
puts "#{a}"
