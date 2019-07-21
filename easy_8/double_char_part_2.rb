# Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Input: String
# Output: New string with every consonant doubled

# Al:
# - Initialize a constant, CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z), outside of the method definition
# - Initialize an empty array, temp_arr
# - Call chars method on str and then chain the each method to it, executing a do..end block with the argument letter passed in
#   - if CONSONANTS.include? letter
#     - temp_arr << letter * 2
#   - else
#     - temp_arr << letter
#   - end
# - temp_arr.join('')

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z B C D F G H J K L M N P Q R S T V W X Y Z)

def double_consonants(str)
  temp_arr = []
  str.chars.each do |letter|
    if CONSONANTS.include? letter
      temp_arr << letter * 2
    else
      temp_arr << letter
    end
  end

  temp_arr.join('')
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
