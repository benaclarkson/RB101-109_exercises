# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Input: Integer
# Output: All integers between 1 and the argument

# Al:
# - Initialize an empty array, arr
# - Call upto method on input num
#   - Within the curly braces of the the block, arr << n

def sequence(num)
  arr = []
  1.upto(num) { |n| arr << n }
  arr
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
