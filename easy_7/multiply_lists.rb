# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

# Input: 2 arrays of integers
# Output: New array containing the product of each pair of numbers from input arrays at corresponding indices

# Al:
# - Initialize a counter variable and set it to 0
# - Call the map method on arr1 and execute a do..end block, passing in the argument num
# - Return num * arr2[counter]
# - Reassign counter to counter + 1
# - Understanding implicit return and how the map method works, we need to return the product variable once more after we increment the counter variable.

# First solution
def multiply_list(arr1, arr2)
  counter = 0
  arr1.map do |num|
    product = num * arr2[counter]
    counter += 1
    product
  end
end

# Further exploration attempt
def multiply_list(arr1, arr2)
  arr1.zip(arr2) { |arr| arr * arr2 }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
