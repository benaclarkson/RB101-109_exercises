# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Input: String
# Output: New string in which every other character is capitalized and remaining characters are lowercase. Non-alpha numbers should not be changed and ignored in the index position count

# Al:
# Essentially, use the same procedure from the last exercise, except this time, we will keep track of how many non-alphabetic chars there are and increase the index check by that amount upon each iteration.

def staggered_case(str)
  indices_skipped = 0
  working_array = str.chars
  working_array.each_with_index do |char, i|
    if (i + indices_skipped).even? && char =~ /[a-zA-Z]/
      char.upcase!
    elsif (i + indices_skipped).odd? && char =~ /[a-zA-Z]/
      char.downcase!
    else
      indices_skipped += 1
      char
    end
  end

  working_array.join('')
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
