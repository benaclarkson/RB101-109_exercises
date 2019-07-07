# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.

# Input: string
# Output: A hash containing string lengths (including puncutation) as keys
#         and # of occurences as values

# Data structure: hash

# START by splitting the input on every space
# Iterate through each word in the new array
# gsub!(/[^a-z]/i, '') to get rid of non-alphabetic characters
# Iterate through that array
# Set the length of the current word to a new key in the length_hsh
# UNLESS it already exists, then just add 1 to the value of said key
# Return the length_hsh

def word_sizes(str)
  length_hsh = {}

  lttr_str = str.split(' ').each do |word|
    word.gsub!(/[^a-z]/i, '')
  end

  lttr_str.each do |word|
    if length_hsh.key?(word.length)
      length_hsh[word.length] += 1
    else
      length_hsh[word.length] = 1
    end
  end

  length_hsh
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
