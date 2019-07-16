# Write a method that takes an Array as an argument, and returns two Arrays (as
# a pair of nested Arrays) that contain the first half and second half of the
# original Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half Array.

# Input: Array
# Output: Two arrays (as a pair of nested arrays) that contain the first half
#         and second half of the original Array.
# Rules:
#   - If the number is odd, the middle element goes in the first half array.

# Start by deciphering if arr.length.even? or arr.length.odd?
# Create two empty arrays in which to store the elements for first/second halves
# Divvy up the halves and place them in corresponding arrays


def halvsies(arr)
  first_half = []
  second_half = []
  if arr.length.even?
    first_half << arr.first(arr.length / 2)
    second_half << arr.last(arr.length / 2)
    [first_half.flatten, second_half.flatten]
  elsif arr.length.odd?
    first_half << arr.first(arr.length / 2 + 1)
    second_half << arr.last(arr.length / 2)
    [first_half.flatten, second_half.flatten]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
