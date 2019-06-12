# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list should
# be those values that are in the 1st, 3rd, 5th, and so on elements of the
# argument Array.

# P
# input: an array of values
# ouput: an array containing every other value from input array
# rules:
#   - If the input array is empty, return emtpy array

# questions:
#   - Am I to return a modified version of the input array or a new array?

# E
# oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# oddities(['abc', 'def']) == ['abc']
# oddities([123]) == [123]
# oddities([]) == []

# D
# array

# A
# Create an empty array
# From the input array, select values that are in the odd indices of input array
# Shovel those values into a new array
# Return new array

# Option 1
def oddities(array1)
  array2 = []

  array1.select do |value|
    if array1.index(value).even?
      array2 << value
    end
  end

  array2
end

# Returning the 2nd, 4th, 6th, etc elements in the input array
def evens(array1)
  array2 = []

  array1.select do |value|
    if array1.index(value).odd?
      array2 << value
    end
  end

  array2
end

# Option 2
def oddities_v2(array1)
  array2 = []

  index = 0

  while index <= array1.size
    array2 << array1.fetch(index)
    index += 2
  end

  array2
end

# Option 3
def oddities_v3(array1)
  index = 0
  array2 = []

  while index <= array1.size
    value1 = array1.delete_at(index)
    array2 << value1 if value1 != nil

    index += 1
  end

  array2
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

oddities_v2([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities_v2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities_v2(['abc', 'def']) == ['abc']
oddities_v2([123]) == [123]
oddities_v2([]) == []

oddities_v3([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities_v3([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities_v3(['abc', 'def']) == ['abc']
oddities_v3([123]) == [123]
oddities_v3([]) == []
