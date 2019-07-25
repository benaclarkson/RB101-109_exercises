# Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence that your method will create. The method should return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. If the count is 0, an empty list should be returned.

# Input: 2 Integers: Count, First number of a sequence
# Output: Array containing same number of elements as the count argument and each element will be multiples of the starting number (2nd argument)

# Al:
# - Initialize an empty array, arr
# - Initialize a variable, multiple = 1
# - Initialize a variable, counter = 0
# - while counter < count
#   - arr << seq * multiple
#   - counter += 1
#   - multiple += 1
# - return arr

def sequence(count, seq)
  arr = []
  multiple = 1
  counter = 0
  while counter < count
    arr << seq * multiple
    counter += 1
    multiple += 1
  end

  arr
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
