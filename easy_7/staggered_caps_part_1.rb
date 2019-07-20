# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Input: String
# Output: New string in which every other character is capitalized and remaining characters are lowercase. Non-alpha numbers should not be changed, but included in counting every other.

# Al:
# - Call the chars method on the input str and save the result in a working_array
# - Call the each_with_index method on working_array
# - If the index is even and the char is =~ /[a-zA-Z]/, upcase the char
# - Elsif the index is odd and the char is =~ /[a-zA-Z]/, downcase the char
# - Else if neither of those are the case, just return the char
# - Call the join method on working_array to return the new string

def staggered_case(str)
  working_array = str.chars
  working_array.each_with_index do |char, i|
    if i.even? && char =~ /[a-zA-Z]/
      char.upcase!
    elsif i.odd? && char =~ /[a-zA-Z]/
      char.downcase!
    else
      char
    end
  end

  working_array.join('')
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
