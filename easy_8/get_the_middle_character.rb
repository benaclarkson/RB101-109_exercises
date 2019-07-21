# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

# Input: String
# Output: Middle-most character from input string. If input.size.odd?, return 1 char. If input.size.even?, return 2 char.

# Al:
# - Call char method on str and save returned array in a variable, working_arr
# - Determine if the size of working_arr is odd or even
#   - If odd, just return the character at the index of [working_arr.size / 2]
#   - If even, return the character at the index of [working_arr.size / 2 - 1] +
#     the index of [working_arr.size / 2] to return the two most center chars

def center_of(str)
  working_arr = str.chars
  if working_arr.size.odd?
    working_arr[working_arr.size / 2]
  elsif working_arr.size.even?
    (working_arr[working_arr.size / 2 - 1]) +
    (working_arr[working_arr.size / 2])
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
