# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Input: Array of Integers
# Output:

# Al:
# - Initialize a variable, total, and set it to 0
# - Initialize a variable, subtract, and set it to 1
# - Call the each method on arr and execute a do..end block
# - Upon each iteration, reassign total to total + the sum of the array from range 0..(arr.size - subtract)
# - Increase subtract value by 1 at the end of each iteration, to, in reverse order, sum the appropriate groupings of the input array.
# - Return the total value

def sum_of_sums(arr)
  total = 0
  subtract = 1
  arr.each do |num|
    total += arr[0..(arr.size - subtract)].sum
    subtract += 1
  end
  total
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
