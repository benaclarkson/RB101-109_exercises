# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Input: string
# Output: A hash containing string lengths (including puncutation) as keys
#         and # of occurences as values

# Data structure: hash

# START by splitting the input on every space
# Iterate through each word in the new array
# Set the length of the current word to a new key in the length_hsh
# UNLESS it already exists, then just add 1 to the value of said key
# Return the length_hsh

def word_sizes(str)
  length_hsh = {}

  str.split(' ').each do |word|
    if length_hsh.key?(word.length)
      length_hsh[word.length] += 1
    else
      length_hsh[word.length] = 1
    end
  end

  length_hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
