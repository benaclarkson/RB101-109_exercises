# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Input: String
# Output: New string in which every uppcase letter is lowercase and vice versa
# Rules:
#   - You may not use String#swapcase

# Al:
# - Call the chars method on the input string and store the returned array in a new variable, called working_array
# - Iterate through each char within working_array
# - If char.downcase == str
#   - char.upcase!
# - Elsif char.upcase == str
#   - char.downcase!
# - Else
#   - char
# - Call the join method on working_array

def swapcase(str)
  working_array = str.chars
  working_array.each do |char|
    if char.downcase == char
      char.upcase!
    elsif char.upcase == char
      char.downcase!
    else
      char
    end
  end

  working_array.join('')
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
