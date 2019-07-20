# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Input: String
# Output: New string value with first letter of every word capitalized and all other letters lowercase.

# Al:
# - Split the input string on every space
# - Iterate through each word using each and assign the result of the method call and block execution to a variable working_array
# - Call the capitalize! method upon each iteration
# - Call the join method on the working array to return a new string

def word_cap(str)
  working_array = str.split(' ').each do |word|
    word.capitalize!
  end

  working_array.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
