# Write a method that takes an integer or zero, and converts it to a
# string representation.

# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the number.

# Input: positive or negative integer or 0
# Output: a string representation of input
# Rules:
#   - Cannot use std conversion methods available in Ruby
#   - Has to be done the old fashioned way

# Examples:
# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def signed_integer_to_string(s_int)
  if s_int == 0
    integer_to_string(s_int)
  elsif s_int.positive?
    "+" + integer_to_string(s_int)
  else
    "-" + integer_to_string(s_int.abs)
  end
end

def integer_to_string(int)
  int.digits.reverse.join
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
