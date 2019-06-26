# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. Your method should do this the old-fashioned
# way and calculate the result by analyzing the characters in the string.

# input: string of numbers
# output: an integer version of input string
# rules:
#   - Don't worry about leading + or - signs
#   - Cannot use String#to_i or Integer() to convert string

# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# Hash to store the string representation of an integer as the key and the actual
# integer as the value.

# Map through the chars of input string
# Output the value of the corresponding key
#

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |num| DIGITS[num] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570
