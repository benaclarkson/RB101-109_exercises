# Write a method that combines two Arrays passed in as arguments, and returns
# a new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# Input: two arrays
# Output: new array containing all elements of both input arrays, with the
#         elements taken in alternation

# Al:
# - Initialize a counter variable to the integer 0
# - Initialize a new, empty array into which we will `<<` the results of the coming loop
# - Create a `while` construct within the method definition
# - while counter <= arr1.size
# - Within this loop method invocation and block execution, first shovel the
#   element in the first array at index location of counter's current value,
#   then do the same for the 2nd array argument that is passed to the method invocation
#   in the example.
# - Increase the counter += 1
# - Once the loop execution has ended, return the new array.

def interleave(arr1, arr2)
  counter = 0
  new_arr = []
  while counter < arr1.size
    new_arr << arr1[counter]
    new_arr << arr2[counter]
    counter += 1
  end

  new_arr
end

# Further Exploration

def interleave_zip(arr1, arr2)
  arr1.zip(arr2).flatten
end

interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
