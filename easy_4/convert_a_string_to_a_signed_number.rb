# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.

# You may assume the string will always contain a valid number.

# Input: string of digits, which may have a leading + or - sign
# Output: if input is preceded by + or nothing, output should be positive number
#         if input is preceded by -, output should be a negative number

# Rules:
#   - You may not use any of the standard conversion methods available in Ruby, such
#     as String#to_i, Integer(), etc.
#   - You may, however, use the string_to_integer method from the previous lesson.

# Examples:
# string_to_signed_integer('4321') == 4321
# string_to_signed_integer('-570') == -570
# string_to_signed_integer('+100') == 100

# Data
# Same hash as before, except we will need to add the symbols into it as well

#

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

# Option 1
def string_to_signed_integer(str)
  if ['+'].include?(str.chars[0])
    str.slice!(0)
    sign = +0
  elsif ['-'].include?(str.chars[0])
    str.slice!(0)
    sign = -0
  else
    sign = 0
  end
  digits = str.chars.map { |num| DIGITS[num] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  sign + value
end

# Option 2
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
