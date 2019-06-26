# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# input: array of integers
# output: an array with the same number of elements. each value in array must be
#         the running total of the elements gone through in the array.
# questions:
#   - Safe to assume that all values within input array will be positive integers?

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# array of sums

# Create a variable to hold the current total
# Add current value to current total
# Shovel current total into an array
# Keep looping through until end of array input is reached
# Return totals_array

# Option 1
def running_total(array)

  current_total = 0
  index_position = 0
  totals_array = []

  while index_position < array.size
    current_total += array[index_position]
    totals_array << current_total
    index_position += 1
  end

  totals_array
end

# Option 2
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
