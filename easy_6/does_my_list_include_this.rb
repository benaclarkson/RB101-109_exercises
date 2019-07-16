# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in
# your solution.

# Input: Array and search value
# Output: Boolean, based on whether search value is in array
# Rules:
#   - Cannot use Array#include? in solution

# Al:
# - Iterate through arr input, using any? mthod
# - Within the block, define an obj |el| with which to compare to srch input
# - If any of those comparisons are equal, block will return true

def include?(arr, srch)
  arr.any? { |el| el == srch }
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
