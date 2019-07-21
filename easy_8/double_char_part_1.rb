# Write a method that takes a string, and returns a new string in which every character is doubled.

# Input: String
# Output: New string in which every char is doubled

# Al:
# - Initialize an empty array, temp_arr
# - Call chars method on str and then chain the each method to it, executing a do..end block with the argument letter passed in
#   - Upon each iteration of the each method, temp_arr << letter * 2
# - temp_arr.join('')

def repeater(str)
  temp_arr = []
  str.chars do |letter|
    temp_arr << letter * 2
  end
  
  temp_arr.join('')
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
