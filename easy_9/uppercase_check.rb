# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

# Input: String
# Ouput: True or False based on expectations

# Al:
# - Call chars method on the input string
# - Chain select method to the chars method
# - Store results of select method in new variable called upcase_arr
# - upcase_arr == str.chars

def uppercase?(str)
  upcase_arr = str.chars.select do |char|
    char == char.upcase
  end
  upcase_arr == str.chars
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
