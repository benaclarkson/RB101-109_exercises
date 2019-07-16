# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# Input: an array of strings
# Output: the same string values, but with the vowels removed

# Questions:
#   - Am I to return an array or multiple strings on their own?
#   - If so, am I returning the same array?

# Iterate through the array using map
# delete("aeiouAEIOU")

def remove_vowels(arr)
  arr.map do |str|
    str.delete("aeiouAEIOU")
  end
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
