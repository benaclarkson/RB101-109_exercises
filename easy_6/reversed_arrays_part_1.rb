# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Input: An array of elements
# Output: The same array, but mutated so that all elements are in reverse order
# Rules:
#   - You may not use Array#reverse or Array#reverse!.

# Start by calling each on the input array
# Delete current element, then unshift that current element
# Each will return the original, but mutated, array

def reverse!(arr)
  arr.each do |element|
    arr.delete(element)
    arr.unshift(element)
  end
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
