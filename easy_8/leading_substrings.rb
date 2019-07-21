# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

def substrings_at_start(str)
  subtract = 0
  substring_array = [str[0]]
  while subtract < str.size
    substring_array << str[0..(str.size - subtract)]
    subtract += 1
  end
  substring_array.sort.uniq!
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
