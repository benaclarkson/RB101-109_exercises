# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# P
# input: string
# output: truthy value based on whether string is palindrome or not
# rules:
#   - case matters
#   - all chars matter

# E
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# D

# A
# take input string and output true if input == input.reverse

# Specifically for strings
def string_palindrome?(string)
  string == string.reverse
end

# Specifically for arrays
def array_palindrome?(array)
  array == array.reverse
end

# Works with either input
def palindrome?(input)
  input == input.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
