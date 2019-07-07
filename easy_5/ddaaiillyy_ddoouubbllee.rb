# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# Input: string
# Output: A new string with all consecutive duplicate characters collapsed into
#         a single character

# Rules:
#   - Cannot use String#squeeze or String#squeeze!

# Initialize a variable to manage the indices as we loop
# Initialize an empty string into which we can place the valid parts of the
# input string.
# Iterate through each letter in str, shoveling the current letter into the
# empty string crunch_text, unless the coming character is an exact match.
# Return the final, crunch_text string at the end.


def crunch(str)
  i = 0
  crunch_text = ''
  while i <= str.length
    crunch_text << str[i] unless str[i] == str[i + 1]
    i += 1
  end
  crunch_text
end


crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
