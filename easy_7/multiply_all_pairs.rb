# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Input: Two Arrays of integers
# Output: A new Array that contains the product of every pair of numbers that can be formed between both arguments passed to the method
# Rules:
#   - Assume neither argument is an empty Array
#   - Results should be sorted by increasing value (ascending order?)

# Al:
# - Initialize a variable, products, which points to an empty array
# - Call each method on arr1 with a do..end block |arr1_num|
#   - Call each method on arr2 within that block |arr2_num|
#     - products << arr1_num * arr2_num
# - Return products.sort

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |arr1_num|
    arr2.each do |arr2_num|
      products << arr1_num * arr2_num
    end
  end
  products.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
