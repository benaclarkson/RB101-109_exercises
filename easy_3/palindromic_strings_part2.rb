# Write another method that returns true if the string passed as an argument is a
# palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in
# the previous exercise.

# P
# input: string
# output: truthy value based on whether input is a true palindrome
# rules:
#   - case-insensitive
#   - ignore all non-alphanumeric numbers

# E
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# D
# Store working solution in array
# Store final solution in string

# A
# mod_string = input.downcase.delete(/regex for non-alphanumeric values/).split().join('')
# mod_string == mod_string.reverse

def real_palindrome?(input)
  mod_string = input.downcase.delete('^a-z0-9')
  mod_string == mod_string.reverse
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
